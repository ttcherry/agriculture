package com.agriculture.service;

import java.util.List;

import com.agriculture.po.Area;
import com.agriculture.po.CropCustom;



public interface nyxt_AreaService {

	
	//查询所有地区管理信息
	public List<Area> findAreaList(Area area) throws Exception;

	//查询出省级List
	public List<Area> findProvinceTreeMenu(Area area) throws Exception;
	
	//查询出市级List
	public List<Area> findCityTreeMenu(Area area) throws Exception; 
	
	//查询出县级List
	public List<Area> findCountyTreeMenu(Area area) throws Exception;
	
	//省级管理查询得到的内容
	public List<Area> findAreaListByProvince(Area area) throws Exception;
	
	//市级管理查询得到的内容
	public List<Area> findAreaListByCity(Area area) throws Exception;
	
	//县级管理查询得到的内容
	public List<Area> findAreaListByCounty(Area area) throws Exception;
	
	//插入地区
	public void insertArea(Area area) throws Exception;
	
	//删除地区
	public void deleteArea(Area area) throws Exception;
	
	//修改地区
	public void EditArea(Area area) throws Exception;
	
	//查询地区信息
	public Area findAreaById(Area area) throws Exception;
	
	//模糊查询（根据名称查找地区）
	public List<Area> searchArea(String keyword) throws Exception;
	
	//根据名称查询地区
	public Area searchAreaByName(Area area) throws Exception;
}
