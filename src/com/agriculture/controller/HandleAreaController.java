package com.agriculture.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.agriculture.po.Area;
import com.agriculture.po.CropCustom;
import com.agriculture.po.SysUser;
import com.agriculture.service.nyxt_AreaService;



@Controller
public class HandleAreaController {
	
	@Autowired
	private nyxt_AreaService areaService;
	
	@RequestMapping("insertArea")
	@ResponseBody
	public String insertProvince(Area area,HttpSession session)
	{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		System.out.println("地区名字"+area.getArea_name()+area.getType());
		Area area2 = null;
		String result="error";
		try {
			 area2= areaService.searchAreaByName(area);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(null == area2){
		area.setCreate_by(user.getName());
		area.setCreate_date(time);
		area.setUpdate_by(user.getName());
		area.setUpdate_date(time);
		System.out.println(area.getCreate_by());
		System.out.println("进入insertArea");
	
		try{
			areaService.insertArea(area);
			result="success";
		} catch (Exception e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("地区插入失败！");
			result = "error";
		}
		}else{
			result = "failed";
		}
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("updateArea/{id}")
	@ResponseBody
	public String updateArea(Area area,HttpSession session,@PathVariable int id)
	{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		area.setId(id);
		System.out.println("地区名字"+area.getArea_name()+area);
		Area area2 = null;
		String result="error";
		try {
			area2 = areaService.searchAreaByName(area);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(area2==null){
		area.setCreate_by(user.getName());
		area.setCreate_date(time);
		area.setUpdate_by(user.getName());
		area.setUpdate_date(time);
		System.out.println(area.getCreate_by());
		System.out.println("进入updateArea");
	
		try{
			areaService.EditArea(area);;
			result="success";
		} catch (Exception e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("地区修改失败！");
			result = "error";
		}
		}else{
			result = "failed";
		}
	
		return result;
	}
	
	//搜索模糊查找
		@RequestMapping("searchArea/{keyword}")
		public  ModelAndView searchArea(@PathVariable String keyword,String areatype , HttpSession session) throws Exception{
			
			//System.out.println("模糊查询");
			SysUser user = (SysUser) session.getAttribute("user");
			int role = Integer.valueOf(user.getRole_id());
			ModelAndView mv = new ModelAndView();
			boolean juge = true;
			if(user!=null){
			List<Area> areaList=areaService.searchArea(keyword);
			
			int area_id;
			if(areatype.equals("省级"))
			{
				area_id = 1;
			}else if(areatype.equals("市级"))
			{
				area_id = 2;
			}else{
				area_id = 3;
			}
			
			for(Area area2:areaList)
			{
				if(Integer.valueOf(area2.getType())< role)
				{
					juge = false;
				}
			}
			if(juge)
			{
				mv.addObject("areaList", areaList);
			}
			mv.addObject("area_type",areatype);
			mv.addObject("area_type_id",area_id);
			mv.setViewName("system/Area/arealist");
			}
		    return mv; 
		}
	
}
