package com.zy.entity;

public class Category {
    private Integer id;

    private String catename;

    private String catedesc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCatename() {
        return catename;
    }

    public void setCatename(String catename) {
        this.catename = catename == null ? null : catename.trim();
    }

    public String getCatedesc() {
        return catedesc;
    }

    public void setCatedesc(String catedesc) {
        this.catedesc = catedesc == null ? null : catedesc.trim();
    }
}