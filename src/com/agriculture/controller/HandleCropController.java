package com.agriculture.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.agriculture.po.Crop;
import com.agriculture.po.CropCustom;
import com.agriculture.po.Croptype;
import com.agriculture.po.SysUser;
import com.agriculture.service.CropService;
import com.agriculture.service.CroptypeService;

@Controller
public class HandleCropController {
	
	@Autowired
	private CropService cropService;
	
	@Autowired
	private CroptypeService croptypeService;
	//根据作物名称删除作物信息
	@RequestMapping("deleteCropByName")
	public void deleteCropByName(Integer id,String crop_name, HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		Crop crop=new Crop();
		crop.setUpdate_by(user.getName());
		crop.setUpdate_date(time);
		crop.setId(id);
		crop.setId(id);
		crop.setCrop_name(crop_name);
		cropService.deleteCropByName(crop);
	}
	
	@RequestMapping("deleteCropById")
	public void deleteCropById(Integer id,String crop_name, HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
		System.out.println("删除作物！id");
		System.out.println(id);
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		Crop crop=new Crop();
		crop.setUpdate_by(user.getName());
		crop.setUpdate_date(time);
		crop.setId(id);
		cropService.deleteCropById(crop);
	}
	
	//跳转到编辑弹出表单
	@RequestMapping("cropedit")
	public ModelAndView cropedit(Integer id) throws Exception{
		List<Croptype> croptypeList=croptypeService.getCroptypeList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("croptypeList", croptypeList);
		CropCustom cropCustom=cropService.selectCropById(id);
		mv.addObject("cropCustom", cropCustom);
		mv.setViewName("system/Crop/cropedit");
		return mv;
	}
	
	//作物编辑提交
	@RequestMapping("cropSubmit")
	public @ResponseBody String cropSubmit(Crop crop,HttpSession session) throws Exception{
		System.out.println("作物编辑"+crop.getId());
		//判断在同一级别是否存在相同的作物名称
		Crop crop1=cropService.selectCropByNameId(crop);
		String result="";
		//不存在
		if(crop1==null){
			//根据id查询作物名称
			CropCustom cropCustom=cropService.selectCropById(crop.getId());
			crop.setHelp(cropCustom.getCrop_name());
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			crop.setUpdate_by(user.getName());
			crop.setUpdate_date(time);
			cropService.cropedit(crop);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
	//跳转到作物添加表单
	@RequestMapping("cropForm")
	public ModelAndView cropForm()throws Exception{
		List<Croptype> croptypeList=croptypeService.getCroptypeList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("croptypeList", croptypeList);
		mv.setViewName("system/Crop/cropForm");
		return mv;
	}
	//作物添加提交
	@RequestMapping("cropFormSub")
	public @ResponseBody String cropFormSub(Crop crop,HttpSession session) throws Exception{
		Crop crop1=cropService.selectCropByName(crop.getCrop_name());
		String result="";
		if(crop1==null){
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			crop.setCreate_by(user.getName());
			crop.setCreate_date(time);
			crop.setArea_id(0);
			crop.setUpdate_by(user.getName());
			crop.setUpdate_date(new Date());
			cropService.insertCrop(crop);
			result="success";
		}else{
			result="failed";
		}
		return  result;
	}
	//搜索模糊查找
	@RequestMapping("search/{keyword}")
	public ModelAndView search(@PathVariable String keyword) throws Exception{
		List<CropCustom> cropList=cropService.searchCrop(keyword);
		ModelAndView mv = new ModelAndView();
		mv.addObject("cropList", cropList);
		mv.setViewName("system/Crop/croplist");
		return mv; 
	}
}
