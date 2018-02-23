package com.agriculture.po;

import java.util.ArrayList;
import java.util.List;

public class TreeMenu {
	
	private String name;// 菜单名称
	private String href;// URL地址
	private String spread;//是否打开
	private int id;//id值
	private List<TreeMenu> children;//子菜单

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHref() {
		return href;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public List<TreeMenu> getChildren() {
		return children;
	}
	public void setChildren(List<TreeMenu> children) {
		this.children = children;
	}
	
	public void addChildren(TreeMenu treemenu)
	{
		this.children.add(treemenu);
	}
	
	public TreeMenu(String name, String href,String spread,int id)
	{
		this.name=name;
		this.spread=spread;
		this.href=href;
		this.children = new ArrayList<>();
		this.id = id;
	}
	
}
