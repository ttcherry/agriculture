package com.agriculture.po;

public class SysMenu {
    private Integer id;

    private String name;

    private String fatherMenu;

    private String remark;

    private Integer deleteId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFatherMenu() {
        return fatherMenu;
    }

    public void setFatherMenu(String fatherMenu) {
        this.fatherMenu = fatherMenu == null ? null : fatherMenu.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }
}