package com.agriculture.po;

import java.util.Date;

public class Growtime {
	private Integer id;
	private String grow_name;
	private String startmonth;
	private String startxun;
	private String endmonth;
	private String endxun;
	private Integer crop_id;
	private String create_by;
	private Date create_date;
	private String update_by;
	private Date update_date;
	private String del_flag;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getGrow_name() {
		return grow_name;
	}
	public void setGrow_name(String grow_name) {
		this.grow_name = grow_name;
	}
	public String getStartmonth() {
		return startmonth;
	}
	public void setStartmonth(String startmonth) {
		this.startmonth = startmonth;
	}
	public String getStartxun() {
		return startxun;
	}
	public void setStartxun(String startxun) {
		this.startxun = startxun;
	}
	public String getEndmonth() {
		return endmonth;
	}
	public void setEndmonth(String endmonth) {
		this.endmonth = endmonth;
	}
	public String getEndxun() {
		return endxun;
	}
	public void setEndxun(String endxun) {
		this.endxun = endxun;
	}
	public Integer getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(Integer crop_id) {
		this.crop_id = crop_id;
	}
	public String getCreate_by() {
		return create_by;
	}
	public void setCreate_by(String create_by) {
		this.create_by = create_by;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public String getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(String del_flag) {
		this.del_flag = del_flag;
	}
}
