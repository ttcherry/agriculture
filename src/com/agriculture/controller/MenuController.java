package com.agriculture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.agriculture.po.*;
import com.agriculture.service.nyxt_AreaService;
import com.agriculture.service.CropService;
import com.agriculture.service.CroptypeService;
import com.agriculture.service.SysUserService;
import com.agriculture.service.nyxt_menuService;
import com.agriculture.util.MenuToJson;

@Controller
public class MenuController {
	
	@Autowired
	private nyxt_menuService menuService;
	@Autowired
	private nyxt_AreaService areaService;
	
	@Autowired
	private CroptypeService croptypeService;
	@Autowired
	private CropService cropService;
	
	@Autowired
	private SysUserService userservice;
	
	@RequestMapping("getMenu")
	public @ResponseBody List<MenuBean> getMenu(HttpSession session)throws IOException
	{
		System.out.println("进入Menu");
		SysUser user = (SysUser) session.getAttribute("user");
		List<MenuBean>list = new ArrayList<MenuBean>();
		try {
			//
			Menu sysMenu = new Menu();
			List<Menu> fatherMenu=menuService.findFatherMenu(sysMenu);//查询出父菜单的list集合

			Map<Integer,MenuBean>fathermenuMap= new HashMap<Integer,MenuBean>();//父菜单的MenuBean与名字的map集合
			
			for(Menu menu:fatherMenu)
			{
				MenuBean meauBean = new MenuBean( menu.getName(),menu.getUrl() ,menu.getIcon(), menu.getSort()==1?"true":"false");
				fathermenuMap.put(menu.getParent_id(), meauBean);
				
			}
			
			//查询出子菜单的集合
			List<Menu> cropMenu=menuService.findChildMenu(sysMenu);
			for(int i=0;i<cropMenu.size();i++){
				
				Menu menu_child = cropMenu.get(i);
				
				Integer parent_id = menu_child.getParent_id();//获得父菜单ID
				
				MenuBean menuBean = fathermenuMap.get(parent_id);//获得父菜单的MenuBean
				
				MenuBean menuChildren = new MenuBean(menu_child.getName() ,menu_child.getUrl(), menu_child.getIcon(), "false");//得到子菜单的类 创建MenuBean
				int role = Integer.valueOf(user.getRole_id());
				if(role!=0 && menu_child.getId()==13   )
				{
					
					System.out.println("123");
							continue;
				}
				else if(role!=0 && menu_child.getId()==14   )
				{
							continue;
				}
				
				else if(role==2 && menu_child.getId()==4  )
				{
					continue;
				}
				else if(role==3 && menu_child.getId()== 4   )
				{
					continue;
				}
				else if(role==3 && menu_child.getId()== 11   )
				{
					continue;
				}
				
				if(role!=0 && (menu_child.getId()==6 || menu_child.getId()==7)  )
				{
					continue;
				}
				
			
				
				menuBean.addChildren(menuChildren);//向父菜单中加入子菜单
				
			}
	
			int count = 0;
			for (MenuBean value : fathermenuMap.values()) {  //向list中加入MenuBean对象
				list.add(value);
			}  
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("返回菜单list集合的json对象！");
		}
		
		return list;
		
	}
	
	@RequestMapping("getPersonInfoMenu")
	public ModelAndView getPersonInfo()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/Person/person");
		return mv;
	}
	
	@RequestMapping("getPersonAddMenu")
	public ModelAndView getPersonAddInfo()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/Person/personInsert");
		return mv;
	}
	
	@RequestMapping("getPersonEdit")
	public ModelAndView getPersonEdit(Integer id,HttpSession session)
	{
		SysUser currentuser = (SysUser) session.getAttribute("user");
		ModelAndView mv = new ModelAndView();
		SysUser user = new SysUser();
		user.setAccount(id.toString());
		SysUser person = new SysUser();;
		try {
			person = userservice.getUserById(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("person",person);
		mv.addObject("currentuser",currentuser);
		mv.setViewName("system/Person/personedit");
		return mv;
	}
	
	@RequestMapping("getPersonListMenu")
	public ModelAndView getPersonList()
	{
		ModelAndView mv = new ModelAndView();
		List<SysUser> userlist = new ArrayList<>();
		try {
			 userlist= userservice.getAllUser();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("personlist",userlist);
		mv.setViewName("system/Person/personlist");
		return mv;
	}
	
	@RequestMapping("getAreaMenu/{area_type}")
	public ModelAndView getAreaMenu(@PathVariable int area_type,Area area,ModelMap model)
	{
		System.out.println("进入省级");
		ModelAndView mv = new ModelAndView();
		String type = null;
		if(area_type==1){
			type = "省级";
			List<Area> areaList;
			try {
				areaList = areaService.findProvinceTreeMenu(area);
				//System.out.println(areaList.get(0).getArea_name());
				mv.addObject("areaList",areaList);
				model.put("type", 1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("省级管理信息查询失败！");
			}
			
		}else if(area_type==2)
		{
			type = "市级";
			List<Area> areaList = null;
			try {
				areaList = areaService.findCityTreeMenu(area);
				//System.out.println(areaList.get(0).getArea_name());
				mv.addObject("areaList",areaList);
				model.put("type", 2);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("市级管理信息查询失败！");
			}
			
		}else if(area_type==3){
			type = "县级";
			List<Area> areaList;
			try {
				areaList = areaService.findCountyTreeMenu(area);
				//System.out.println(areaList.get(0).getArea_name());
				mv.addObject("areaList",areaList);
				model.put("type", 3);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("县级管理信息查询失败！");
			}
			
		}
		mv.addObject("area_type_id",area_type);
		mv.addObject("area_type",type);
		mv.setViewName("system/Area/arealist");

		return mv;
	}
	
	//查询全部作物类别
	@RequestMapping("getCropMenu_type")
	public ModelAndView getCropMenu_type() throws Exception
	{
		List<Croptype> croptypeList=croptypeService.getCroptypeList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("croptypeList", croptypeList);
		mv.setViewName("system/Crop/croptypelist");
		return mv;
	}
	
	//查询全部作物信息
	@RequestMapping("getCropMenu_controll")
	public ModelAndView getCropMenu_controll() throws Exception
	{
		List<CropCustom> cropList=cropService.getCropList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("cropList", cropList);
		mv.setViewName("system/Crop/croplist");
		return mv;
	}
	
	//作物分配
	@RequestMapping("getCropMenu_distribution")
	public ModelAndView getCropMenu_distribution() throws Exception
	{
		List<CropCustom> cropAreaList=cropService.getCropAreaList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("cropAreaList",cropAreaList);
		mv.setViewName("system/Distribute/areatree");		
		return mv;
	}
	
	//三农服务
	@RequestMapping("getWeather_Agricluture")
	public ModelAndView getWeather_Agricluture()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/Serve/serve");
		return mv;
	}
	
	//获取树形菜单信息
	@RequestMapping("getTree")
	public @ResponseBody List<TreeMenu>getTreeMenu(HttpSession session)throws IOException 
	{
		System.out.println("进入TreeMenu");
		SysUser user = (SysUser) session.getAttribute("user");
		int role = Integer.valueOf(user.getRole_id());
		List<TreeMenu> list = new ArrayList<TreeMenu>();
		List<Area>list_Province = new ArrayList<Area>();
		Area area = new Area();
		try {
			list_Province = areaService.findProvinceTreeMenu(area);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("未查询到省级信息！");
		}
		Map<Integer,TreeMenu>ProvinceTreeMap= new HashMap<Integer,TreeMenu>();//省的TreeMenu与名字的map集合
		for(Area provinceTree:list_Province)
		{
			
			TreeMenu p_treeMenu = new TreeMenu(provinceTree.getArea_name(),"#","false",provinceTree.getId());
			if(role==0 || role==1)
			{list.add(p_treeMenu);}
			
			ProvinceTreeMap.put(provinceTree.getId(), p_treeMenu);
		}
		
		List<Area>list_City = new ArrayList<Area>();
		try {
			list_City = areaService.findCityTreeMenu(area);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("未查询到市级信息！");
		}
		Map<Integer,TreeMenu>CityTreeMap= new HashMap<Integer,TreeMenu>();//市的TreeMenu与名字的map集合
		for(Area cityTree:list_City)
		{
			TreeMenu ParentMenu_province = ProvinceTreeMap.get(cityTree.getP_id());
			TreeMenu City_TreeMenu = new TreeMenu(cityTree.getArea_name(), "#", "false",cityTree.getId());
			ParentMenu_province.addChildren(City_TreeMenu);
			CityTreeMap.put(cityTree.getId(), City_TreeMenu);
			if(role==2)
			{
				list.add(City_TreeMenu);
			}
		}
		
		List<Area>list_County = new ArrayList<Area>();
		try {
			list_County = areaService.findCountyTreeMenu(area);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("未查询到县级信息！");
		}
		for(Area CountyTree:list_County)
		{
			
			TreeMenu ParentMenu_city = CityTreeMap.get(CountyTree.getP_id());
			TreeMenu County_TreeMenu = new TreeMenu(CountyTree.getArea_name(), "#", "false",CountyTree.getId());
			ParentMenu_city.addChildren(County_TreeMenu);
			if(role==3)
			{
				list.add(County_TreeMenu);
			}
		}
		
		
		return list;
		
	}
	
	@RequestMapping("getDistribute")
	public ModelAndView getDistribute(Integer area_id,ModelMap model)
	{
		ModelAndView mv = new ModelAndView();
		System.out.println("跳转到作物分配页面"+area_id);
		try {
			List<CropCustom> cropList = cropService.getCropListByArea_id(area_id);
			model.put("area_id", area_id);
			mv.addObject("cropList", cropList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("作物分配菜单得到作物列表信息失败！");
		}
		
		mv.setViewName("system/Distribute/distribute");
		return mv;
		
	}
	

	//获取server菜单信息
	@RequestMapping("getServeName")
	public @ResponseBody List<String>getServerName()throws IOException 
	{
		List<Area> Province = new ArrayList<>();
		Area area = new Area();
		try {
			Province = areaService.findProvinceTreeMenu(area);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<String> ProvinceName = new ArrayList<>();
		for(Area area_1:Province)
		{
			ProvinceName.add(area_1.getArea_name());
		}
		return ProvinceName;
	}
	

	//获取server菜单信息
	@RequestMapping("getServeName_2")
	public @ResponseBody List<Map<String,List<Integer>>>getServerName_2()throws IOException 
	{
	
		List<Map<String, List<Integer>>> listmaplist = new ArrayList<Map<String,List<Integer>>>();
		
		List<Integer>list = new  ArrayList<>();
		list.add((int) 1074.93);
		list.add((int) 411.46);
		list.add((int) 918.02);
		list.add((int) 224.91);
		list.add((int) 384.76);
		list.add((int) 876.12);
		list.add((int) 238.61);
		list.add((int) 492.1);
		list.add((int) 1019.68);
		list.add((int) 2747.89);
		list.add((int) 1677.13);
		list.add((int) 634.92);
		list.add((int) 402.51);
		list.add((int) 411.46);
		list.add((int)1838.14);
		list.add((int) 987);
		list.add((int) 634.67);
		list.add((int) 518.04);
		list.add((int) 3321.31);
		list.add((int) 465.68);
		list.add((int) 208.71);
		list.add((int) 396.28);
		list.add((int) 620.62);
		list.add((int) 160.3);
		list.add((int) 222.31);
		list.add((int) 17.44);
		list.add((int)	398.03);
		list.add((int) 134.25);
		list.add((int) 29.05);
		list.add((int) 79.01);
		list.add((int) 176.22);
		Map<String,List<Integer>>maplist = new HashMap<>();
		maplist.put("2010", list);
		listmaplist.add(maplist);
		return listmaplist;
	}
	
	

}
