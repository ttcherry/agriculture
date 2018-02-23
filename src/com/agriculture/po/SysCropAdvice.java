package com.agriculture.po;

import java.util.Date;

public class SysCropAdvice {
    private Integer id;

    private Integer cropGpId;

    private String weatherCp;

    private String advice;

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

    public String getWeatherCp() {
        return weatherCp;
    }

    public void setWeatherCp(String weatherCp) {
        this.weatherCp = weatherCp == null ? null : weatherCp.trim();
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice == null ? null : advice.trim();
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