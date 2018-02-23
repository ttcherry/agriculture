package com.agriculture.service;

import java.util.List;

import com.agriculture.po.Active;
import com.agriculture.po.Condition;
import com.agriculture.po.Disaster;
import com.agriculture.po.Factor;
import com.agriculture.po.Growtime;
import com.agriculture.po.Product;

public interface CropInfoService {
	//气象要素指标
	public List<Factor> getFactorByCropId(Integer crop_id) throws Exception;
	
	//查询气象要素条数
	public Integer getFactorCount(Integer crop_id)throws Exception;
	
	//根据id查询气象要素指标
	public Factor getFactorById(Integer id) throws Exception;
	
	//获取产品信息 	
	public List<Product> getProduct(Product product) throws Exception;

	//气象条件
	public Condition getConditionByCropId(Integer crop_id) throws Exception;
	
	//根据id获取气象条件
	public Condition getConditionById(Integer id) throws Exception;
	
	//农业活动建议
	public Active getActiveByCropId(Integer crop_id) throws Exception;
	
	//根据id获取农业活动建议
	public Active getActiveById(Integer id) throws Exception;
	
	//气象灾害
	public List<Disaster> getDisasterByCropId(Integer crop_id) throws Exception;
	
	//查询气象灾害条数
	public Integer getDisasterCount(Integer crop_id)throws Exception;
	
	//根据id查询气象灾害
	public Disaster getDisasterById(Integer id) throws Exception;
	
	//生长时间
	public List<Growtime> getGrowtimeByCropId(Integer crop_id) throws Exception;
	
	//生长时间条数
	public Integer getGrowtimeCount(Integer crop_id) throws Exception;
	
	//删除气象要素指标
	public void deleteFactorById(Integer id) throws Exception;
	
	//删除气象灾害
	public void deleteDisasterById(Integer id) throws Exception;
	
	//更新气象要素指标
	public void Factoredit(Factor factor) throws Exception;
	
	//更新气象条件 
	public void Conditionedit(Condition condition) throws Exception;
	
	//更新农业活动建议
	public void Activeedit(Active active) throws Exception;
	
	//更新气象灾害
	public void Disasteredit(Disaster disaster) throws Exception;
	
	//插入气象要素指标
	public void insertFactor(Factor factor) throws Exception;
	
	//插入气象灾害
	public void  insertDisaster(Disaster disaster) throws Exception;

	//删除产品信息
	public void deleteProductById(Integer id) throws Exception;
	
	//删除作物生长时间根据id
	public void deleteGrowTimeById(Integer id) throws Exception; 
	
	//添加产品信息
	public void insertProduct(Product product) throws Exception;
	
	//查看添加的信息的产品名是否重复,否者添加失败
	public Product selectProductByName(Product product) throws Exception;
	
	//添加作物生长时间
	public void insertGrowTime(Growtime growtime) throws Exception;
		
	//查询该作物生长的名称是否重复，否者添加失败
	public Growtime selectGrowTimeByName(Growtime growtime) throws Exception;
	
	//根据id查询产品信息
	public Product selectProductById(Integer id) throws Exception;
	
	//查询产品条数
	public Integer getProductCount(Product product)throws Exception;
		
	//修改产品信息
	public void updateProduct(Product product) throws Exception;
	
	//查询该作物生长的名称是否重复，否者修改失败
	public Product selectProductByNameId(Product product) throws Exception;
	
	//作物生长时间的获取根据id
	public Growtime selectGrowTimeById(Integer id) throws Exception;
		
//	//根据作物的生长的名称和crop_id查询是否重名，否者编辑失败 
	public Growtime selectGrowTimeByNameId(Growtime growtime) throws Exception;
		
//	//编辑作物生长时间
	public void updateGrowTime(Growtime growtime) throws Exception;
	
	//插入气象条件指标
	public void insertCondition(Condition condition) throws Exception;
		
	//插入气象建议指标
	public void insertActive(Active active) throws Exception;

}
