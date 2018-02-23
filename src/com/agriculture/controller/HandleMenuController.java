package com.agriculture.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.agriculture.po.Croptype;
import com.agriculture.service.CroptypeService;


import com.agriculture.po.Area;
import com.agriculture.service.nyxt_AreaService;


@Controller
public class HandleMenuController {
	
	@Autowired
	private nyxt_AreaService areaService;


	
	//区域管理
		@RequestMapping("HandleArea/{operate}/{area_id}/{id}")
	public ModelAndView HadnlerArea(@PathVariable String operate , @PathVariable int area_id , Area area,ModelMap model,@PathVariable int id){

		ModelAndView mv = new ModelAndView();
		System.out.println("area_id"+area_id);
		if(operate.equals("add")){
			if(area_id==2)
			{
				try {
					List<Area> areaList = areaService.findProvinceTreeMenu(area);
					//System.out.println("areaList"+areaList.get(0).getArea_name());
					mv.addObject("areaList", areaList);
					model.put("type", 2);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(area_id==3)
			{
				try {
					List<Area> areaList = areaService.findCityTreeMenu(area);
					mv.addObject("areaList", areaList);
					model.put("type", 3);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(area_id==1)
			{
				model.put("type", 1);
			}
			model.put("operate","add");
			mv.setViewName("system/Area/areaedit");
		}else if(operate.equals("edit")){
			Area area_1 = new Area();
			area_1.setId(id);
			try {
				Area area_2 = areaService.findAreaById(area_1);
				mv.addObject("Area",area_2.getArea_name());
				model.put("operate","edit");
				model.put("id",id);
				mv.setViewName("system/Area/areaedit");
				List<Area> areaList = new ArrayList<>();
				if(area_2.getType()==2)
				{
					 areaList = areaService.findProvinceTreeMenu(area);
				}else if(area_2.getType()==3)
				{
					 areaList = areaService.findCityTreeMenu(area);
				}
				mv.addObject("areaList", areaList);
				model.put("type", area_id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}else if(operate.equals("delete")){
			System.out.println("进入删除！");
			Area area_del = new Area();
			area_del.setId(id);;
			try {
				areaService.deleteArea(area_del);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("删除地区信息失败！");
			}
			mv.setViewName("system/Area/areaedit");
			
		}
		return mv;
		
	}
}
