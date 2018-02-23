package com.agriculture.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.agriculture.mapper.nyxt_MenuMapper;
import com.agriculture.po.Menu;
import com.agriculture.service.nyxt_menuService;

public class nyxt_menuServiceImpl implements nyxt_menuService {

	@Autowired
	private nyxt_MenuMapper meanMapper;
	
	@Override
	public List<Menu> findFatherMenu(Menu menu) throws Exception {
		// TODO Auto-generated method stub
		return meanMapper.findFatherMenu(menu);
	}

	@Override
	public List<Menu> findChildMenu(Menu menu) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("查询子菜单");
		return meanMapper.findChildMenu(menu);
	}

}
