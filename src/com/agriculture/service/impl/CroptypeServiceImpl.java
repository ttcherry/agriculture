package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.CroptypeMapper;
import com.agriculture.mapper.nyxt_MenuMapper;
import com.agriculture.po.Croptype;
import com.agriculture.po.Menu;
import com.agriculture.service.CroptypeService;
import com.agriculture.service.nyxt_menuService;
/*
 * 
 * 作物类别操作impl
 */
public class CroptypeServiceImpl implements CroptypeService {

	@Autowired
	private CroptypeMapper manage;
	//查询全部作物种类
	@Override
	public List<Croptype> getCroptypeList() throws Exception {
		return manage.getCroptypeList();
	}
	
	@Override
	public Croptype getCroptypeByName(Croptype croptype) throws Exception {
		return manage.getCroptypeByName(croptype);
	}
	@Override
	public void insertCroptype(Croptype croptype) throws Exception {
		manage.insertCroptype(croptype);
		
	}

	@Override
	public Croptype  selectCroptypeById(Integer id) throws Exception {
		return manage.selectCroptypeById(id);
		
	}

	@Override
	public void deleteCroptypeById(Croptype croptype) throws Exception {
		manage.deleteCroptypeById(croptype);
		
	}

	@Override
	public void updateCroptypeById(Croptype croptype) throws Exception {
		manage.updateCroptypeById(croptype);
	}

	@Override
	public Croptype getCroptypeByNameId(Croptype croptype) throws Exception {
		// TODO Auto-generated method stub
		return manage.getCroptypeByNameId(croptype);
	}

	

	
}
