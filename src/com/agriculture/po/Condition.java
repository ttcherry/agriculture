package com.agriculture.po;

import java.util.Date;

public class Condition {
	private Integer id;
	private Integer crop_id;
	private Integer crop_grow_time;
	private String resuit;
	private String suit;
	private String notsuit;
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
	public Integer getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(Integer crop_id) {
		this.crop_id = crop_id;
	}
	public Integer getCrop_grow_time() {
		return crop_grow_time;
	}
	public void setCrop_grow_time(Integer crop_grow_time) {
		this.crop_grow_time = crop_grow_time;
	}
	public String getResuit() {
		return resuit;
	}
	public void setResuit(String resuit) {
		this.resuit = resuit;
	}
	public String getSuit() {
		return suit;
	}
	public void setSuit(String suit) {
		this.suit = suit;
	}
	public String getNotsuit() {
		return notsuit;
	}
	public void setNotsuit(String notsuit) {
		this.notsuit = notsuit;
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
