package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.nyxt_AreaMapper;
import com.agriculture.po.Area;
import com.agriculture.service.nyxt_AreaService;

public class nyxt_AreaServiceImpl implements nyxt_AreaService {

	@Autowired
	private nyxt_AreaMapper areaMapper;
	
	
	//查询所有区域管理信息
	@Override
	public List<Area> findAreaList(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("查询所有区域管理！");
		return areaMapper.findAreaList(area);
	}

	//查询省地区管理
	@Override
	public List<Area> findProvinceTreeMenu(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("查询省管理！");
		return areaMapper.findProvinceTreeMenu(area);
	}

	//查询市地区管理
	@Override
	public List<Area> findCityTreeMenu(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("查询市管理！");
		return areaMapper.findCityTreeMenu(area);
	}

	//查询县地区管理
	@Override
	public List<Area> findCountyTreeMenu(Area area) throws Exception {
		System.out.println("查询县管理！");
		return areaMapper.findCountyTreeMenu(area);
	}

	//查询省级管理得到的内容
	@Override
	public List<Area> findAreaListByProvince(Area area) throws Exception {
		System.out.println("查询省级管理得到的内容！");
		return areaMapper.findAreaListByProvince(area);
	}

	//查询市级管理得到的内容
	@Override
	public List<Area> findAreaListByCity(Area area) throws Exception {
		System.out.println("查询市级管理得到的内容！");
		return areaMapper.findAreaListByCity(area);
	}

	//查询县级管理得到的内容
	@Override
	public List<Area> findAreaListByCounty(Area area) throws Exception {
		System.out.println("查询县级管理得到的内容！");
		return areaMapper.findAreaListByCounty(area);
	}

	@Override
	public void insertArea(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("增加地区信息！");
		areaMapper.insertArea(area);
	}

	@Override
	public void deleteArea(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("删除地区信息");
		areaMapper.deleteArea(area);
	}

	@Override
	public void EditArea(Area area) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("修改地区信息");
		areaMapper.EditArea(area);
	}

	@Override
	public Area findAreaById(Area area) throws Exception {
		// TODO Auto-generated method stub
		Area area_1 = areaMapper.selectArea(area);
		return area_1;
	}

	@Override
	public List<Area> searchArea(String keyword) throws Exception {
		// TODO Auto-generated method stub
		return areaMapper.searchArea(keyword);
	}

	@Override
	public Area searchAreaByName(Area area) throws Exception {
		// TODO Auto-generated method stub
		return areaMapper.searchAreaByName(area);
	}

	

}
