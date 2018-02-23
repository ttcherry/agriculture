package com.agriculture.po;

import java.util.Date;

public class SysWeatherFactor {
    private Integer id;

    private Integer cropGpId;

    private Float fit;

    private Float fitMin;

    private Float lessFitMin;

    private Float fitMax;

    private Float lessFitMax;

    private String sort;

    private String description;

    private String updateUser;

    private Date updateTime;

    private Integer deleteId;

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

    public Float getFit() {
        return fit;
    }

    public void setFit(Float fit) {
        this.fit = fit;
    }

    public Float getFitMin() {
        return fitMin;
    }

    public void setFitMin(Float fitMin) {
        this.fitMin = fitMin;
    }

    public Float getLessFitMin() {
        return lessFitMin;
    }

    public void setLessFitMin(Float lessFitMin) {
        this.lessFitMin = lessFitMin;
    }

    public Float getFitMax() {
        return fitMax;
    }

    public void setFitMax(Float fitMax) {
        this.fitMax = fitMax;
    }

    public Float getLessFitMax() {
        return lessFitMax;
    }

    public void setLessFitMax(Float lessFitMax) {
        this.lessFitMax = lessFitMax;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser == null ? null : updateUser.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }
}