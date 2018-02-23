package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.CropMapper;
import com.agriculture.po.Crop;
import com.agriculture.po.CropCustom;
import com.agriculture.service.CropService;
/*
 * 
 * 作物impl
 */


public class CropServiceImpl implements CropService{

	@Autowired
	private CropMapper cropMapper;
	@Override
	public List<CropCustom> getCropList() throws Exception {
		// TODO Auto-generated method stub
		return  cropMapper.getCropList();
	}
	@Override
	public List<CropCustom> getCropAreaList() throws Exception {
		return cropMapper.getCropAreaList();
	}

	@Override
	public void deleteCropByName(Crop crop) throws Exception {
		cropMapper.deleteCropByName(crop);
	}
	@Override
	public CropCustom selectCropById(Integer id) throws Exception {
		return cropMapper.selectCropById(id);
	}

	@Override
	public List<CropCustom> getCropListByArea_id(int area_id) throws Exception {
		// TODO Auto-generated method stub
		return  cropMapper.getCropListByArea_id(area_id);

	}
	@Override
	public void cropedit(Crop crop) throws Exception {
		cropMapper.cropedit(crop);
		
	}
	@Override
	public void insertCrop(Crop crop) throws Exception {
		cropMapper.insertCrop(crop);
		
	}
	@Override
	public List<CropCustom> searchCrop(String keyword) throws Exception {
		// TODO Auto-generated method stub
		return cropMapper.searchCrop(keyword);
	}
	@Override
	public Crop selectCropByNameId(Crop crop) throws Exception {
		return cropMapper.selectCropByNameId(crop);
	}
	@Override
	public Crop selectCropByName(String crop_name) throws Exception {
		return cropMapper.selectCropByName(crop_name);
	}
	@Override
	public List<CropCustom> selectCropByAreaId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropMapper.selectCropByAreaId(id);
	}
	@Override
	public void deleteCropById(Crop crop) throws Exception {
		// TODO Auto-generated method stub
		cropMapper.deleteCropById(crop);
	}

}
