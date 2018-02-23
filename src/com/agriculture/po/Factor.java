package com.agriculture.po;

import java.util.Date;

public class Factor {
	private Integer id; //id
	private String factor_name; //气象要素名称
	private Integer crop_id;  //作物id
	private String crop_time_id; //关联作物生育期的id
	private String resuitlow; //较适宜下限
	private String suitlow;	 //适宜下限
	private String suitmid;  //适宜
	private String resuithigh; //较适宜上限
	private String suithigh;  	//适宜上限
	private String create_by; //创建者
	private Date create_date; //创建时间
	private String update_by; //更新着
	private Date update_date; //更新日期
	private String del_flag; //删除标记
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getFactor_name() {
		return factor_name;
	}
	public void setFactor_name(String factor_name) {
		this.factor_name = factor_name;
	}
	public Integer getCrop_id() {
		return crop_id;
	}
	public void setCrop_id(Integer crop_id) {
		this.crop_id = crop_id;
	}
	public String getCrop_time_id() {
		return crop_time_id;
	}
	public void setCrop_time_id(String crop_time_id) {
		this.crop_time_id = crop_time_id;
	}
	public String getResuitlow() {
		return resuitlow;
	}
	public void setResuitlow(String resuitlow) {
		this.resuitlow = resuitlow;
	}
	public String getSuitlow() {
		return suitlow;
	}
	public void setSuitlow(String suitlow) {
		this.suitlow = suitlow;
	}
	public String getSuitmid() {
		return suitmid;
	}
	public void setSuitmid(String suitmid) {
		this.suitmid = suitmid;
	}
	public String getResuithigh() {
		return resuithigh;
	}
	public void setResuithigh(String resuithigh) {
		this.resuithigh = resuithigh;
	}
	public String getSuithigh() {
		return suithigh;
	}
	public void setSuithigh(String suithigh) {
		this.suithigh = suithigh;
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
