package com.agriculture.po;

public class Active {
	private Integer id;
	private Integer crop_id;
	private Integer crop_grow_time;
	private String consider;
	private String advice;
	private Integer del_flag;
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
	public String getConsider() {
		return consider;
	}
	public void setConsider(String consider) {
		this.consider = consider;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public Integer getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(Integer del_flag) {
		this.del_flag = del_flag;
	}
}
