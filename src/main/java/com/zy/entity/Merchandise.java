package com.zy.entity;

import java.math.BigDecimal;
import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class Merchandise {
    private Integer id;

    private String mername;

    private BigDecimal price;

    private BigDecimal sprice;

    private String mermodel;

    private String picture;

    private String manufacturer;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date leavefactorydate;

    private String special;

    private String category;

    private String merdesc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMername() {
        return mername;
    }

    public void setMername(String mername) {
        this.mername = mername == null ? null : mername.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getSprice() {
        return sprice;
    }

    public void setSprice(BigDecimal sprice) {
        this.sprice = sprice;
    }

    public String getMermodel() {
        return mermodel;
    }

    public void setMermodel(String mermodel) {
        this.mermodel = mermodel == null ? null : mermodel.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public Date getLeavefactorydate() {
        return leavefactorydate;
    }

    public void setLeavefactorydate(Date leavefactorydate) {
        this.leavefactorydate = leavefactorydate;
    }

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special == null ? null : special.trim();
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    public String getMerdesc() {
        return merdesc;
    }

    public void setMerdesc(String merdesc) {
        this.merdesc = merdesc == null ? null : merdesc.trim();
    }
}