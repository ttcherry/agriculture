package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.CropInfoMapper;
import com.agriculture.po.Active;
import com.agriculture.po.Condition;
import com.agriculture.po.Disaster;
import com.agriculture.po.Factor;
import com.agriculture.po.Growtime;
import com.agriculture.po.Product;
import com.agriculture.service.CropInfoService;

public class CropInfoServiceImpl implements CropInfoService{
	@Autowired
	private CropInfoMapper cropInfoMapper;
	@Override
	public List<Factor> getFactorByCropId(Integer crop_id) throws Exception {
		return cropInfoMapper.getFactorByCropId(crop_id);
	}

	@Override
	public List<Product> getProduct(Product product) throws Exception {
		return cropInfoMapper.getProduct(product);
	}
	@Override
	public Condition getConditionByCropId(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getConditionByCropId(crop_id);
	}
	@Override
	public Active getActiveByCropId(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getActiveByCropId(crop_id);
	}
	@Override
	public List<Disaster> getDisasterByCropId(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getDisasterByCropId(crop_id);
	}

	@Override
	public void deleteFactorById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		 cropInfoMapper.deleteFactorById(id);
	}
	@Override
	public void deleteDisasterById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.deleteDisasterById(id);
	}
	@Override
	public void Factoredit(Factor factor) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.Factoredit(factor);
	}
	@Override
	public void Conditionedit(Condition condition) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.Conditionedit(condition);
		
	}
	@Override
	public void Activeedit(Active active) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.Activeedit(active);
		
	}
	@Override
	public void Disasteredit(Disaster disaster) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.Disasteredit(disaster);
	}


	@Override
	public List<Growtime> getGrowtimeByCropId(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getGrowtimeByCropId(crop_id);
	}

	@Override
	public void insertFactor(Factor factor) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.insertFactor(factor);
	}

	@Override
	public void insertDisaster(Disaster disaster) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.insertDisaster(disaster);
	}


	@Override
	public void deleteProductById(Integer id) throws Exception {
		cropInfoMapper.deleteProductById(id);
		
	}

	@Override
	public void deleteGrowTimeById(Integer id) throws Exception {
		cropInfoMapper.deleteGrowTimeById(id);
		
	}

	@Override
	public void insertProduct(Product product) throws Exception {
		cropInfoMapper.insertProduct(product);
	}

	@Override
	public Product selectProductByName(Product product) throws Exception {
		Product product2=cropInfoMapper.selectProductByName(product);
		return product2;
	}

	@Override
	public void insertGrowTime(Growtime growtime) throws Exception {
		cropInfoMapper.insertGrowTime(growtime);
	}

	@Override
	public Growtime selectGrowTimeByName(Growtime growtime) throws Exception {
		Growtime growtime2=cropInfoMapper.selectGrowTimeByName(growtime);
		return growtime2;
	}

	@Override
	public Product selectProductById(Integer id) throws Exception {
		
		return cropInfoMapper.selectProductById(id);
	}

	@Override
	public void updateProduct(Product product) throws Exception {
		cropInfoMapper.updateProduct(product);
	}

	@Override
	public Product selectProductByNameId(Product product) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.selectProductByNameId(product);
	}

	@Override
	public Growtime selectGrowTimeById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.selectGrowTimeById(id);
	}

	@Override
	public Growtime selectGrowTimeByNameId(Growtime growtime) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.selectGrowTimeByNameId(growtime);
	}

	@Override
	public void updateGrowTime(Growtime growtime) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.updateGrowTime(growtime);
	}


	@Override
	public Factor getFactorById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getFactorById(id);
	}

	@Override
	public Disaster getDisasterById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getDisasterById(id);
	}

	@Override
	public Condition getConditionById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getConditionById(id);
	}

	@Override
	public Active getActiveById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getActiveById(id);
	}

	@Override
	public void insertCondition(Condition condition) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.insertCondition(condition);
	}

	@Override
	public void insertActive(Active active) throws Exception {
		// TODO Auto-generated method stub
		cropInfoMapper.insertActive(active);
	}

	@Override
	public Integer getFactorCount(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getFactorCount(crop_id);
	}

	@Override
	public Integer getDisasterCount(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getDisasterCount(crop_id);
		
	}

	@Override
	public Integer getProductCount(Product product) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getProductCount(product);
	}

	@Override
	public Integer getGrowtimeCount(Integer crop_id) throws Exception {
		// TODO Auto-generated method stub
		return cropInfoMapper.getGrowtimeCount(crop_id);
	}


}
