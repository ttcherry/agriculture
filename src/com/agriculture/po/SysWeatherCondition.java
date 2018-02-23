package com.agriculture.po;

import java.util.Date;

public class SysWeatherCondition {
    private Integer id;

    private Integer cropGpId;

    private String fitCondition;

    private String lessFitConditon;

    private String noFitCondition;

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

    public String getFitCondition() {
        return fitCondition;
    }

    public void setFitCondition(String fitCondition) {
        this.fitCondition = fitCondition == null ? null : fitCondition.trim();
    }

    public String getLessFitConditon() {
        return lessFitConditon;
    }

    public void setLessFitConditon(String lessFitConditon) {
        this.lessFitConditon = lessFitConditon == null ? null : lessFitConditon.trim();
    }

    public String getNoFitCondition() {
        return noFitCondition;
    }

    public void setNoFitCondition(String noFitCondition) {
        this.noFitCondition = noFitCondition == null ? null : noFitCondition.trim();
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