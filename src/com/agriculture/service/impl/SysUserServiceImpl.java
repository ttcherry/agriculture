package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.SysUserMapper;
import com.agriculture.po.SysUser;
import com.agriculture.service.SysUserService;

/**
 * 
 * <p>Title: ItemsServiceImpl</p>
 * <p>Description: 商品管理</p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智.燕青
 * @date	2015-4-13下午3:49:54
 * @version 1.0
 */
public class SysUserServiceImpl implements SysUserService{

	@Autowired
	private SysUserMapper sysUserMapper;
	@Override
	public SysUser findInfoByAccount(SysUser sysUser) throws Exception {
		SysUser sysUser1=sysUserMapper.findInfoByAccount(sysUser);
		return sysUser1;
	}
	@Override
	public SysUser getInfoByAccount(String account) throws Exception {
		return sysUserMapper.getInfoByAccount(account);
	}
	@Override
	public void submitUserInfo(SysUser sysUser) throws Exception {
		sysUserMapper.submitUserInfo(sysUser);
		
	}
	@Override
	public void submitUserInfoNot(SysUser sysUser) throws Exception {
		sysUserMapper.submitUserInfoNot(sysUser);
		
	}
	@Override
	public void insertPerson(SysUser sysUser) throws Exception {
		// TODO Auto-generated method stub
		sysUserMapper.insertPerson(sysUser);
	}
	@Override
	public List<SysUser> getAllUser() throws Exception {
		// TODO Auto-generated method stub
		return sysUserMapper.getAllUser();
	}
	@Override
	public List<SysUser> searchPerson(String keyword) throws Exception {
		// TODO Auto-generated method stub
		return sysUserMapper.searchPerson(keyword);
	}
	@Override
	public void deleteUser(Integer id) throws Exception {
		// TODO Auto-generated method stub
		sysUserMapper.deleteUser(id);
	}
	@Override
	public SysUser getUserById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return sysUserMapper.getUserById(id);
	}

	
	
	

}
