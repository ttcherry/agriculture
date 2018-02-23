package com.agriculture.po;

public class Disaster {
	private Integer id;
	private Integer crop_id;
	private Integer crop_grow_time;
	private String disaster_name;
	private String type;
	private String conif;
	private String measure;
	private String product;
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
	
	public String getDisaster_name() {
		return disaster_name;
	}
	public void setDisaster_name(String disaster_name) {
		this.disaster_name = disaster_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getConif() {
		return conif;
	}
	public void setConif(String conif) {
		this.conif = conif;
	}
	public String getMeasure() {
		return measure;
	}
	public void setMeasure(String measure) {
		this.measure = measure;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(String del_flag) {
		this.del_flag = del_flag;
	}
}
