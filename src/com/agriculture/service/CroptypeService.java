package com.agriculture.service;

import java.util.List;
import java.util.Map;

import com.agriculture.po.Croptype;
import com.agriculture.po.Menu;

public interface CroptypeService {
	
	//查询全部作物类别信息
	public List<Croptype> getCroptypeList() throws Exception;

	//根据作物种类名称查询
	public Croptype getCroptypeByName(Croptype croptype) throws Exception;

	//添加作物信息
	public void insertCroptype(Croptype croptype) throws Exception;
	
	//根据id查询作物种类
	public  Croptype selectCroptypeById(Integer id) throws Exception;
		
	//根据id删除作物种类
	public void deleteCroptypeById(Croptype croptype) throws Exception;
	
	//根据id修改作物种类信息
	public void updateCroptypeById(Croptype croptype) throws Exception;
	
	//根据作物种类名称和id查询
	public Croptype getCroptypeByNameId(Croptype croptype) throws Exception;
}
