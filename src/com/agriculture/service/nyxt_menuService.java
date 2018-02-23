package com.agriculture.service;

import java.util.List;

import com.agriculture.po.Area;
import com.agriculture.po.Menu;

public interface nyxt_menuService {
	
	//查询父菜单类
	public List<Menu> findFatherMenu(Menu menu) throws Exception;
	
	//查询子菜单类
	public List<Menu> findChildMenu(Menu menu) throws Exception;
	
}
