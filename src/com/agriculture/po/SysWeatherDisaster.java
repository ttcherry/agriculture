package com.agriculture.po;

import java.util.Date;

public class SysWeatherDisaster {
    private Integer id;

    private Integer cropGpId;

    private Integer productId;

    private String disasterName;

    private String disasterType;

    private String occurCondition;

    private String measure;

    private Date updateTime;

    private String updateUser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCropGpId() {
        return cropGpId;
    }

    public void setCropGpId(Integer cropGpId) {
        this.cropGpId = cropGpId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getDisasterName() {
        return disasterName;
    }

    public void setDisasterName(String disasterName) {
        this.disasterName = disasterName == null ? null : disasterName.trim();
    }

    public String getDisasterType() {
        return disasterType;
    }

    public void setDisasterType(String disasterType) {
        this.disasterType = disasterType == null ? null : disasterType.trim();
    }

    public String getOccurCondition() {
        return occurCondition;
    }

    public void setOccurCondition(String occurCondition) {
        this.occurCondition = occurCondition == null ? null : occurCondition.trim();
    }

    public String getMeasure() {
        return measure;
    }

    public void setMeasure(String measure) {
        this.measure = measure == null ? null : measure.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser == null ? null : updateUser.trim();
    }
}