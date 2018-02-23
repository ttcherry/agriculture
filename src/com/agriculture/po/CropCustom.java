package com.agriculture.po;

public class CropCustom extends Crop{
	//为crop添加一个作物种类名称
	private String croptype_name;

	//为作物添加一个所属地区的名称
	private String area_name;
	public String getCroptype_name() {
		return croptype_name;
	}

	public void setCroptype_name(String croptype_name) {
		this.croptype_name = croptype_name;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	
	
	
}
