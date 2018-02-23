package com.agriculture.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.agriculture.po.Croptype;
import com.agriculture.po.SysUser;
import com.agriculture.service.CroptypeService;
import com.agriculture.service.nyxt_AreaService;
@Controller
public class HandleCroptypeController {

	@Autowired
	private CroptypeService croptypeService;
	//作物类别查找
	@RequestMapping("HandlerCroptype")
	public String HadnlerCroptype(@RequestParam(value = "id", required = true) Integer id,Model model) throws Exception{
		
		Croptype croptype1=croptypeService.selectCroptypeById(id);
		model.addAttribute("croptype", croptype1);
		return "system/Crop/croptypeedit";
		
	}
	
	//作物类别编辑提交
	@RequestMapping("croptypeSubmit")
	public @ResponseBody String CroptypeSubmit(Model model,Croptype croptype,HttpSession session) throws Exception{
		//先判断是否重名，否者便是编辑失败
		Croptype croptype1=croptypeService.getCroptypeByNameId(croptype);
		String result="";
		if(croptype1==null){
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			croptype.setUpdate_date(time);
			croptype.setUpdate_by(user.getName());
			croptypeService.updateCroptypeById(croptype);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
	//作物类别删除
	@RequestMapping("croptypeDelete")
	public void croptypeDelete(Integer id,HttpServletResponse response,HttpServletRequest request,HttpSession session) {
		Croptype croptype=new Croptype();
		croptype.setId(id);
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		croptype.setUpdate_date(time);
		croptype.setUpdate_by(user.getName());
		try {
			croptypeService.deleteCroptypeById(croptype);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//作物种类添加表
	@RequestMapping("croptypeForm")
	public String croptypeForm () throws Exception{
		return "system/Crop/croptypeForm";
	}
	//作物种类添加提交
	@RequestMapping("croptypeFormSub")
	public @ResponseBody String croptypeFormSub(Croptype croptype,HttpSession session) throws Exception{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		Croptype cropty=croptypeService.getCroptypeByName(croptype);
		String result="";
		if(cropty==null){
			croptype.setCreate_by(user.getName());
			croptype.setCreate_date(time);
			croptypeService.insertCroptype(croptype);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
}
