package com.agriculture.mapper;

import java.util.List;

import com.agriculture.po.Crop;
import com.agriculture.po.CropCustom;
/*
 * 
 * 作物类作Mapper
 */
public interface CropMapper {
 
	//查询全部作物信息
	public List<CropCustom> getCropList() throws Exception;
	
	//作物所属地区
	public List<CropCustom> getCropAreaList() throws Exception;

	
	//根据作物的名称查询
	public Crop selectCropByName(String crop_name) throws Exception;
	
	//添加作物信息
	public void insertCrop(Crop crop) throws Exception;
	
	//根据id查询作物信息
	public CropCustom selectCropById(Integer id) throws Exception;

	//根据删除作物信息
	public void deleteCropByName(Crop crop) throws Exception;
	
	//根据删除作物信息
	public void deleteCropById(Crop crop) throws Exception;
		
	//查询作物列表根据area_id
	public List<CropCustom> getCropListByArea_id(int area_id)throws Exception;

	//修改作物信息
	public void cropedit(Crop crop) throws Exception;
	
	//模糊查询（根据名称或者作物种类查找）
	public List<CropCustom> searchCrop(String keyword) throws Exception;
	
	//根据作物名称和id查询
	public Crop selectCropByNameId(Crop crop) throws Exception;
	
	//根据地区的上级地区查询所有相关作物 进行分配
	public List<CropCustom> selectCropByAreaId(Integer id) throws Exception;
	
}
