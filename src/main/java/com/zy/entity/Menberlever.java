package com.zy.entity;


public class Menberlever {
    private Integer id;

    private String levelname;

    private String favourable;

    

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLevelname() {
        return levelname;
    }

    public void setLevelname(String levelname) {
        this.levelname = levelname == null ? null : levelname.trim();
    }

    public String getFavourable() {
        return favourable;
    }

    public void setFavourable(String favourable) {
        this.favourable = favourable == null ? null : favourable.trim();
    }
}