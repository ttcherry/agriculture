package com.agriculture.controller;


import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.agriculture.po.Product;
import com.agriculture.po.SysUser;
import com.agriculture.po.Active;
import com.agriculture.po.Area;
import com.agriculture.po.Condition;
import com.agriculture.po.Disaster;
import com.agriculture.po.Factor;
import com.agriculture.po.Growtime;
import com.agriculture.service.CropInfoService;
import com.agriculture.util.PageUtil;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

@Controller
public class HandleCropInfo {
	@Autowired
	private CropInfoService cropInfo;
	private PageUtil pageutil;
	
	// 跳转到作物指标全部信息
	@RequestMapping("zhibiao")
	public ModelAndView zhibiao(HttpSession session,Integer crop_id,ModelMap model,Integer factor_pagecurrent,Integer disaster_pagecurrent,Integer wea_pagecurrent,Integer JX_pagecurrent,Integer PD_pagecurrent,Integer grow_pagecurrent,Integer layid) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		pageutil = new PageUtil();
		model.put("crop_id", crop_id);
		//气象服务趋势产品
		List<Product> productWeather=new ArrayList<Product>();
		Product product=new Product();
		product.setCrop_id(crop_id);
		product.setProduct_type("气象服务趋势产品");
		productWeather=cropInfo.getProduct(product);
		modelAndView.addObject("productWeather", productWeather);
		
		//灾害监测产品
		List<Product> productDisaster=new ArrayList<Product>();
		product.setProduct_type("监测灾害产品");
		productDisaster=cropInfo.getProduct(product);
		modelAndView.addObject("productDisaster",productDisaster);
		
		//精细化服务产品
		List<Product> productDetail=new ArrayList<Product>();
		product.setProduct_type("精细化服务产品");
		productDetail=cropInfo.getProduct(product);
		modelAndView.addObject("productDetail",productDetail);
		
		//作物生长时间
		List<Growtime> growtime=new ArrayList<Growtime>();
		growtime=cropInfo.getGrowtimeByCropId(crop_id);
		modelAndView.addObject("growtime",growtime);
		try {
			List<Factor> factorlist = cropInfo.getFactorByCropId(crop_id);
			//System.out.println(factorlist.get(0).getSuithigh());
			Condition conditionlist  = cropInfo.getConditionByCropId(crop_id);
			Active activelist = cropInfo.getActiveByCropId(crop_id);
			List<Disaster> disasterlist = cropInfo.getDisasterByCropId(crop_id);
			if(factor_pagecurrent==null)
			{
				factor_pagecurrent = 1;
			}
			if(disaster_pagecurrent==null)
			{
				disaster_pagecurrent = 1;
			}
			if(wea_pagecurrent==null)
			{
				wea_pagecurrent = 1;
			}
			if( JX_pagecurrent==null)
			{
				 JX_pagecurrent = 1;
			}
			if(PD_pagecurrent==null)
			{
				PD_pagecurrent = 1;
			}
			if( grow_pagecurrent==null)
			{
				 grow_pagecurrent = 1;
			}
			if(layid==null)
			{
				layid= 11;
			}
			model.put("layid", layid);
			int factor_pagecount = cropInfo.getFactorCount(crop_id);
			int disaster_pagecount = cropInfo.getDisasterCount(crop_id);
			
			product.setCrop_id(crop_id);
			product.setProduct_type("气象服务趋势产品");
			int weaproduct_pagecount = cropInfo.getProductCount(product); 
			
			product.setCrop_id(crop_id);
			product.setProduct_type("监测灾害产品");
			int PDproduct_pagecount = cropInfo.getProductCount(product);
			
			product.setCrop_id(crop_id);
			product.setProduct_type("精细化服务产品");
			int JXproduct_pagecount = cropInfo.getProductCount(product);
			
			int grow_pagecount = cropInfo.getGrowtimeCount(crop_id);
			
			modelAndView.addObject("factorCount",factor_pagecount%3==0?factor_pagecount/3:factor_pagecount/3+1);
			modelAndView.addObject("factor_currentpage",factor_pagecurrent);
			modelAndView.addObject("factorStart",(factor_pagecurrent-1)*3);
			modelAndView.addObject("factorend",(factor_pagecurrent-1)*3+2);
			
			modelAndView.addObject("disasterCount", disaster_pagecount%3==0? disaster_pagecount/3:disaster_pagecount/3+1);
			modelAndView.addObject("disaster_currentpage",disaster_pagecurrent);
			modelAndView.addObject("disasterStart",(disaster_pagecurrent-1)*3);
			modelAndView.addObject("disasterend",(disaster_pagecurrent-1)*3+2);
			
			modelAndView.addObject("weaCount",  weaproduct_pagecount%3==0?  weaproduct_pagecount/3: weaproduct_pagecount/3+1);
			modelAndView.addObject("wea_currentpage",wea_pagecurrent);
			modelAndView.addObject("weaStart",(wea_pagecurrent-1)*3);
			modelAndView.addObject("weaend",(wea_pagecurrent-1)*3+2);
			
			modelAndView.addObject("PD_Count", PDproduct_pagecount%3==0? PDproduct_pagecount/3:PDproduct_pagecount/3+1);
			modelAndView.addObject("PD_currentpage",PD_pagecurrent);
			modelAndView.addObject("PDStart",(PD_pagecurrent-1)*3);
			modelAndView.addObject("PDend",(PD_pagecurrent-1)*3+2);
			
			modelAndView.addObject("JXCount", JXproduct_pagecount%3==0? JXproduct_pagecount/3:JXproduct_pagecount/3+1);
			modelAndView.addObject("JX_currentpage",JX_pagecurrent);
			modelAndView.addObject("JXStart",(JX_pagecurrent-1)*3);
			modelAndView.addObject("JXend",(JX_pagecurrent-1)*3+2);
			
			modelAndView.addObject("growCount",  grow_pagecount%3==0?  grow_pagecount/3: grow_pagecount/3+1);
			modelAndView.addObject("grow_currentpage",grow_pagecurrent);
			modelAndView.addObject("growStart",(grow_pagecurrent-1)*3);
			modelAndView.addObject("growend",(grow_pagecurrent-1)*3+2);
			
			modelAndView.addObject("factorlist",factorlist);
			modelAndView.addObject("conditionlist",conditionlist);
			modelAndView.addObject("activelist",activelist);
			modelAndView.addObject("disasterlist",disasterlist);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(crop_id+"要素指标获取失败！");
		}
		modelAndView.setViewName("system/Distribute/zhibiao");
		return modelAndView;
	}
	
	// 跳转到作物指标全部信息
		@RequestMapping("zhibiao_2")
		public ModelAndView zhibiao_2(HttpSession session,Integer crop_id,ModelMap model,int currentpage) throws Exception {
			ModelAndView modelAndView = new ModelAndView();
			pageutil = new PageUtil();
			model.put("crop_id", crop_id);
			//气象服务趋势产品
			List<Product> productWeather=new ArrayList<Product>();
			Product product=new Product();
			product.setCrop_id(crop_id);
			product.setProduct_type("气象服务趋势产品");
			productWeather=cropInfo.getProduct(product);
			modelAndView.addObject("productWeather", productWeather);
			
			//灾害监测产品
			List<Product> productDisaster=new ArrayList<Product>();
			product.setProduct_type("监测灾害产品");
			productDisaster=cropInfo.getProduct(product);
			modelAndView.addObject("productDisaster",productDisaster);
			
			//精细化服务产品
			List<Product> productDetail=new ArrayList<Product>();
			product.setProduct_type("精细化服务产品");
			productDetail=cropInfo.getProduct(product);
			modelAndView.addObject("productDetail",productDetail);
			
			//作物生长时间
			List<Growtime> growtime=new ArrayList<Growtime>();
			growtime=cropInfo.getGrowtimeByCropId(crop_id);
			modelAndView.addObject("growtime",growtime);
			try {
				List<Factor> factorlist = cropInfo.getFactorByCropId(crop_id);
				//System.out.println(factorlist.get(0).getSuithigh());
				Condition conditionlist  = cropInfo.getConditionByCropId(crop_id);
				Active activelist = cropInfo.getActiveByCropId(crop_id);
				List<Disaster> disasterlist = cropInfo.getDisasterByCropId(crop_id);
				if(String.valueOf(currentpage).equals("null"))
				{
					currentpage = 1;
				}
				pageutil.setPageCount(cropInfo.getFactorCount(crop_id));
				
				
				modelAndView.addObject("factorCount",pageutil.getPageCount());
				modelAndView.addObject("factor_currentpage",currentpage);
				modelAndView.addObject("factorStart",(currentpage-1)*3);
				modelAndView.addObject("factorend",(currentpage-1)*3+3);
				
				modelAndView.addObject("factorlist",factorlist);
				modelAndView.addObject("conditionlist",conditionlist);
				modelAndView.addObject("activelist",activelist);
				modelAndView.addObject("disasterlist",disasterlist);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(crop_id+"要素指标获取失败！");
			}
			modelAndView.setViewName("system/Distribute/zhibiao");
			return modelAndView;
		}
	
	//根据id删除气象要素指标
	@RequestMapping("deleteFactorById")
	public void deleteCropById(Integer id , HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
		System.out.println("删除气象要素指标！");
		System.out.println(id);
		cropInfo.deleteFactorById(id);
	}
	
	//根据id删除气象灾害
	@RequestMapping("deleteDisasterById")
	public void deleteDisasterById(Integer id , HttpServletResponse response,HttpServletRequest request,HttpSession session) throws Exception{
			System.out.println("删除气象灾害！");
			System.out.println(id);
			cropInfo.deleteDisasterById(id);
		}
	
	//插入气象要素指标
	@RequestMapping("insertFactor")
	@ResponseBody
	public String insertFactor( Factor factor,HttpSession session)
	{
		String result="success";
		try{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		System.out.println("气象要素名字"+factor.getFactor_name());
		factor.setCreate_by(user.getName());
		factor.setCreate_date(time);
		factor.setUpdate_by(user.getName());
		factor.setUpdate_date(time);
		factor.setCrop_time_id("1");
		System.out.println(factor.getCreate_by());
		System.out.println("进入insertArea");
		cropInfo.insertFactor(factor);
		result="error";
		} catch (Exception e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("气象要素指标插入失败！");
			result = "error";
		}

		return result;
	}
	
	//插入气象灾害
	@RequestMapping("insertDisaster")
	@ResponseBody
	public String insertDisaster(Disaster disaster,HttpSession session)
	{
		String result="success";
		try{
		Date time = new Date();  
		SysUser user  = (SysUser) session.getAttribute("user");
		System.out.println("气象灾害名字"+disaster.getDisaster_name());
		disaster.setCrop_grow_time(1);
	
		System.out.println("进入insertArea");
		cropInfo.insertDisaster(disaster);
		result="error";
		} catch (Exception e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("气象灾害指标插入失败！");
			result = "error";
		}

		return result;
	}
	
	//跳转到气象要素新增表单
	@RequestMapping("getFactorInsert")
	public ModelAndView getFactorInsert(Integer crop_id,ModelMap model)
	{
		ModelAndView mv = new ModelAndView();
		model.put("crop_id", crop_id);
		mv.setViewName("system/Distribute/FactorInsert");
		return mv;
	}
	//删除产品信息
	@RequestMapping("deleteProduct")
	@ResponseBody
	public void deleteProductById(Integer id) throws Exception{
		cropInfo.deleteProductById(id);
	}
	
	//删除作物生长时间
	@RequestMapping("deleteGrowTime")
	@ResponseBody
	public void deleteGrowTime(Integer id) throws Exception{
		cropInfo.deleteGrowTimeById(id);
	}
	
	//跳转到产品添加的表单
	@RequestMapping("insertProductForm")
	public ModelAndView InsertProductForm(Product product,ModelMap model) throws Exception{
		ModelAndView mv = new ModelAndView();
		model.put("crop_id", product.getCrop_id());
		model.put("product_type", product.getProduct_type());
		mv.setViewName("system/Distribute/insertProduct2");
		return mv;
	}
	//产品添加
	@RequestMapping("insertProduct")
	@ResponseBody
	public String InsertProduct(Product product) throws Exception{
		String result="";
		Product product2=cropInfo.selectProductByName(product);
		//如果查询结果为空，说明该添加的信息不重复，添加成功
		if(product2==null){
			cropInfo.insertProduct(product);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
	
	//跳转到作物增加的表单
	@RequestMapping("insertGrowTimeForm")
	public ModelAndView InsertGrowTimeForm(Integer crop_id,ModelMap model) throws Exception{
		ModelAndView mv = new ModelAndView();
		model.put("crop_id", crop_id);
		mv.setViewName("system/Distribute/insertGrowTime");
		return mv;
	}
	
	//添加作物生长时间
	@RequestMapping("insertGrowTime")
	@ResponseBody
	public String InsertGrowTime(Growtime growtime,HttpSession session) throws Exception{
		String result="";
		Growtime growtime2=cropInfo.selectGrowTimeByName(growtime);
		//判断是否重名
		if(growtime2==null){
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			growtime.setCreate_by(user.getName());
			growtime.setCreate_date(time);
			growtime.setUpdate_by(user.getName());
			growtime.setUpdate_date(time);
			cropInfo.insertGrowTime(growtime);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
	
	//产品信息获取
	@RequestMapping("infoProduct")
	@ResponseBody
	public ModelAndView infoProduct(Integer id) throws Exception{
			ModelAndView modelAndView=new ModelAndView();
			Product product=cropInfo.selectProductById(id);
			modelAndView.addObject("product", product);
			modelAndView.setViewName("system/Distribute/productedit");
			return modelAndView;
	}
	
	//提交修改的产品
	@RequestMapping("productedit")
	@ResponseBody
	public String productedit(Product product) throws Exception{
		String result="";
		Product product2=cropInfo.selectProductByNameId(product);
		if(product2==null){
			cropInfo.updateProduct(product);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}
	//作物生长信息的获取
	@RequestMapping("infoGrowTime")
	public ModelAndView infoGrowTime(Integer id) throws Exception{
		ModelAndView modelAndView=new ModelAndView();
		Growtime growtime=cropInfo.selectGrowTimeById(id);
		modelAndView.addObject("growtime", growtime);
		modelAndView.setViewName("system/Distribute/growtimeedit");
		return modelAndView;
	}
	
	//提交修改的作物生长时间信息
	@RequestMapping("growtimeedit")
	@ResponseBody
	public String growtimeedit(Growtime growtime) throws Exception{
		String result="";
		Growtime growtime2=cropInfo.selectGrowTimeByNameId(growtime);
		//查看提交的信息是否有重复，否者编辑失败
		if(growtime2==null){
			cropInfo.updateGrowTime(growtime);
			result="success";
		}else{
			result="failed";
		}
		return result;
	}

	
	//跳转到气象灾害新新增表单
	@RequestMapping("getDisasterInsert")
	public ModelAndView getDisasterInsert(Integer crop_id,ModelMap model)
	{
		ModelAndView mv = new ModelAndView();
		model.put("crop_id", crop_id);
		mv.setViewName("system/Distribute/DisasterInsert");
		return mv;
	}
	
	//跳转到气象灾害修改表单
		@RequestMapping("getDisasterEdit")
		public ModelAndView getDisasterEdit(Integer id,ModelMap model)
		{
			ModelAndView mv = new ModelAndView();
			Disaster disaster = new Disaster();
			try {
				disaster = cropInfo.getDisasterById(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.put("disaster", disaster);
			model.put("id", id);
			mv.setViewName("system/Distribute/DisasterEdit");
			return mv;
		}
		
		//编辑气象灾害
		@RequestMapping("EditDisaster")
		@ResponseBody
		public String EditDisaster(Disaster disaster,HttpSession session)
		{
			String result="success";
			try{
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			System.out.println("气象灾害名字"+disaster.getDisaster_name());
			disaster.setCrop_grow_time(1);
		
			System.out.println("进入insertArea");
			cropInfo.Disasteredit(disaster);;
			result="error";
			} catch (Exception e) {

				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("气象灾害编辑失败！");
				result = "error";
			}

			return result;
		}
	
	//跳转到气象要素编辑表单
		@RequestMapping("getFactorEdit")
		public ModelAndView getFactorEdit(Integer id,ModelMap model)
		{
			ModelAndView mv = new ModelAndView();
			Factor factor = new Factor();
			try {
				 factor = cropInfo.getFactorById(id);
				 System.out.println("气象要素指标"+factor.getFactor_name());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.put("factor", factor);
			model.put("id", id);
			mv.setViewName("system/Distribute/FactorEdit");
			return mv;
		}
		
		//编辑气象要素
		@RequestMapping("EditFactor")
		@ResponseBody
		public String EditFactor( Factor factor,HttpSession session)
		{
			String result="success";
			try{
			Date time = new Date();  
			SysUser user  = (SysUser) session.getAttribute("user");
			System.out.println("气象要素名字"+factor.getFactor_name());
			factor.setUpdate_by(user.getName());
			factor.setUpdate_date(time);
			factor.setCrop_time_id("1");
			System.out.println(factor.getCreate_by());
			System.out.println("进入EditFactor");
			cropInfo.Factoredit(factor);;
			result="error";
			} catch (Exception e) {

				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("气象要素指标修改失败！");
				result = "error";
			}

			return result;
		}
		
		
		//跳转到气象条件修改表单
			@RequestMapping("getActiveEdit")
			public ModelAndView getActiveEdit(Integer id,ModelMap model)
			{
				ModelAndView mv = new ModelAndView();
				Active active = new Active();
			
				try {
					active = cropInfo.getActiveById(id);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			    model.put("operate", "edit");
				model.put("Active", active);
				model.put("id", id);
				mv.setViewName("system/Distribute/ActiveEdit");
				return mv;
			}
			
			//跳转到气象条件新增表单
			@RequestMapping("getActiveInsert")
			public ModelAndView getActiveInsert(Integer crop_id,ModelMap model)
			{
				ModelAndView mv = new ModelAndView();
				System.out.println(crop_id+"进入气象建议");
				model.put("operate", "insert");
				model.put("crop_id", crop_id);
				mv.setViewName("system/Distribute/ActiveEdit");
				return mv;
			}
			
			//编辑农业活动建议
			@RequestMapping("EditActive/{operate}")
			@ResponseBody
			public String EditActive(@PathVariable String operate , Active active,HttpSession session)
			{
				String result="success";
				try{
				System.out.println("农业活动建议"+active.getAdvice());
				System.out.println("进入EditActive");
				if(operate.equals("edit"))
				{
					cropInfo.Activeedit(active);
				}
				else if(operate.equals("insert"))
				{
					active.setCrop_grow_time(1);
					cropInfo.insertActive(active);
				}
				} catch (Exception e) {

					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("农业活动建议修改失败！");
					result = "error";
				}

				return result;
			}
			
			//跳转到气象建议修改表单
			@RequestMapping("getConditionEdit")
			public ModelAndView getConditionEdit(Integer id,ModelMap model)
			{
				ModelAndView mv = new ModelAndView();
				Condition condition = new Condition();
			
				try {
					condition = cropInfo.getConditionById(id);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				model.put("operate", "edit");
				model.put("Condition", condition);
				model.put("id", id);
				mv.setViewName("system/Distribute/ConditionEdit");
				return mv;
			}
			
			//跳转到气象建议新增表单
			@RequestMapping("getConditionInsert")
			public ModelAndView getConditionInsert(Integer crop_id,ModelMap model)
			{
				ModelAndView mv = new ModelAndView();
				System.out.println(crop_id);
				model.put("crop_id", crop_id);
				model.put("operate", "insert");
				mv.setViewName("system/Distribute/ConditionEdit");
				return mv;
			}
			
			//编辑气象建议
			@RequestMapping("EditCondition/{operate}")
			@ResponseBody
			public String EditCondition(@PathVariable String operate, Condition condition,HttpSession session)
			{
				String result="success";
				try{
				System.out.println("气象建议"+condition.getNotsuit());
				System.out.println("进入EditCondition");
				if(operate.equals("edit"))
				{
					cropInfo.Conditionedit(condition);
				}
				else if(operate.equals("insert"))
				{
					System.out.println("新增");
					SysUser user = (SysUser) session.getAttribute("user");
					condition.setCreate_by(user.getName());
					condition.setCreate_date(new Date());
					condition.setUpdate_by(user.getName());
					condition.setUpdate_date(new Date());
					condition.setCrop_grow_time(1);
					cropInfo.insertCondition(condition);
				}
				
				} catch (Exception e) {

					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("气象建议修改失败！");
					result = "error";
				}

				return result;
			}

}
