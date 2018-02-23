package com.agriculture.po;

import java.util.Date;

public class SysProduct {
    private Integer id;

    private Integer cropGpId;

    private String productName;

    private String productType;

    private String serviceKp;

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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType == null ? null : productType.trim();
    }

    public String getServiceKp() {
        return serviceKp;
    }

    public void setServiceKp(String serviceKp) {
        this.serviceKp = serviceKp == null ? null : serviceKp.trim();
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