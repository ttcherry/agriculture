package com.agriculture.po;

public class Role {
	private Integer id;
	private String role_name;
	private String menu_ids;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getMenu_ids() {
		return menu_ids;
	}
	public void setMenu_ids(String menu_ids) {
		this.menu_ids = menu_ids;
	}
}
