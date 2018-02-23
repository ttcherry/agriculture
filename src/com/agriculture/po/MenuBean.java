package com.agriculture.po;

import java.util.ArrayList;
import java.util.List;

public class MenuBean {
	
	private String title;// 菜单名称
	private String icon;//图标
	private String href;// URL地址
	private String spread;//是否打开
	private List<MenuBean> children;//子菜单
	  
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getSpread() {
		return spread;
	}
	public void setSpread(String spread) {
		this.spread = spread;
	}
	public List<MenuBean> getChildren() {
		return children;
	}
	public void setChildren(List<MenuBean> children) {
		this.children = children;
	}
	public void addChildren(MenuBean bean) {
		this.children.add(bean);
	}
	
	public MenuBean( String title , String href , String icon , String spread)
	{
		
		this.title = title;
		this.href = href;
		this.icon = icon;
		this.spread = spread;
		this.children = new ArrayList<MenuBean>();
	}

	
}
