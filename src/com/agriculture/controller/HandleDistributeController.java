package com.agriculture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.agriculture.po.Crop;
import com.agriculture.po.CropCustom;
import com.agriculture.po.SysUser;
import com.agriculture.service.CropService;

@Controller
public class HandleDistributeController {
	
	@Autowired
	private CropService cropService;
	
		//跳转到作物分配页面
		@RequestMapping("getDistributeForm/{id}")
		public ModelAndView cropForm(@PathVariable int id,ModelMap model)throws Exception{
			//System.out.println(id+"作物分配");
			ModelAndView mv = new ModelAndView();
			model.put("area_id", id);
			System.out.println(id);
			
			List<CropCustom> customlist = cropService.selectCropByAreaId(id);
			List<CropCustom> customlist_1 = new ArrayList<>();
			List<String> typelist = new ArrayList();
			List<CropCustom> cropList = cropService.getCropListByArea_id(id);
//			for(CropCustom custom : customlist) {
//				System.out.println(custom.getCrop_name());
//			}
			for(CropCustom custom : customlist) {
				//System.out.println(custom.getCrop_name());
				int i =0; 
				for(CropCustom cs:cropList)
				  {
					 if(cs.getCrop_name().equals(custom.getCrop_name()))
					  {
						 
						 System.out.println(cs.getCrop_name()+custom.getCrop_name());
						 i=1;
					  }
				 
				  }
				if(i==0)
				{
					
					 // customlist.remove(custom);
					  customlist_1.add(custom);
					  if(!typelist.contains(custom.getCroptype_name()))
					  {
						  
						  //System.out.println(cs.getCrop_name());
						  typelist.add(custom.getCroptype_name());
					 }
				}
				
				  //System.out.println(custom.getCrop_name());
			}
			
//			for(String str:typelist)
//			{
//				System.out.println(str);
//			}
			
			mv.addObject("typelist",typelist);
			mv.addObject("customlist",customlist_1);
			mv.setViewName("system/Distribute/discrop");
			return mv;
		}
		
		@RequestMapping("InsertDistributeForm/{area_id}")
		public String InsertDistributeForm(@RequestParam("cropid") String [] id,@PathVariable int area_id,HttpServletResponse response,HttpSession session)
		{
			System.out.println("areaid"+area_id);
			System.out.println("表单传递的id为：");
			for(String ids:id)
			{
				System.out.println(ids);
				String []info = ids.split("\\|",3);
				
				System.out.println(info[0]+" "+info[1]+" "+info[2]);
				Crop crop = new Crop();
				SysUser user = (SysUser) session.getAttribute("user");
				crop.setId(Integer.valueOf(info[0]));
				crop.setCroptype(Integer.valueOf(info[1]));
				crop.setArea_id(area_id);
				System.out.println(area_id);
				crop.setCrop_name(info[2]);
				crop.setCreate_by(user.getName());
				crop.setCreate_date(new Date());
				crop.setCreate_by(user.getName());
				try {
					cropService.insertCrop(crop);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
			}
			return "redirect:/getDistributeForm/"+area_id+".action";
		}
		
		

}
