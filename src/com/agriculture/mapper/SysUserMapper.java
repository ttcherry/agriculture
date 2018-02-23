package com.agriculture.mapper;

import java.util.List;

import com.agriculture.po.SysUser;

public interface SysUserMapper {
	
  //根据账号查找用户信息(主要是获取密码，登录登录)
	public SysUser findInfoByAccount(SysUser sysUser) throws Exception;
	
	//根据账号查找用户信息
	public SysUser getInfoByAccount(String account) throws Exception;
	
	//提交用户个人修改信息（包括修改图片）
	public void submitUserInfo(SysUser sysUser) throws Exception;
	
	//提交修改信息（不包括修改图片）
	public void submitUserInfoNot(SysUser sysUser) throws Exception;
	
	//增加个人信息
	public void insertPerson(SysUser sysUser) throws Exception;
	
	//查询所有用户
	public List<SysUser> getAllUser() throws Exception;
	
	//模糊查询
	public List<SysUser> searchPerson(String keyword) throws Exception;
	
	//删除管理员
	public void deleteUser(Integer id) throws Exception;
	
	//根据id查询管理员
	public SysUser getUserById(Integer id) throws Exception;
}
