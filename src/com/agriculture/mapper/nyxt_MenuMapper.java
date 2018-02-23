package com.agriculture.mapper;


import java.util.List;
import com.agriculture.po.Menu;

/*
 * 获取菜单mapper
 * 
 */
public interface nyxt_MenuMapper {
	//查找父菜单menu
	public List<Menu> findFatherMenu(Menu menu) throws Exception;

	// 查找每个农作物在菜单表中地的信息
	public List<Menu> findChildMenu(Menu menu) throws Exception;
}
