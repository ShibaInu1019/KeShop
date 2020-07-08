package com.zy.entity;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class Member {
    private Integer id;

    private Integer memberlevel;

    private String loginname;

    private String loginpwd;

    private String membername;

    private String phone;

    private String address;

    private String zip;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date regdate;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date lastdate;

    private Integer logintimes;

    private String email;

    private Menberlever ml;
    
    
    public Menberlever getMl() {
		return ml;
	}

	public void setMl(Menberlever ml) {
		this.ml = ml;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMemberlevel() {
        return memberlevel;
    }

    public void setMemberlevel(Integer memberlevel) {
        this.memberlevel = memberlevel;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getLoginpwd() {
        return loginpwd;
    }

    public void setLoginpwd(String loginpwd) {
        this.loginpwd = loginpwd == null ? null : loginpwd.trim();
    }

    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername == null ? null : membername.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip == null ? null : zip.trim();
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public Date getLastdate() {
        return lastdate;
    }

    public void setLastdate(Date lastdate) {
        this.lastdate = lastdate;
    }

    public Integer getLogintimes() {
        return logintimes;
    }

    public void setLogintimes(Integer logintimes) {
        this.logintimes = logintimes;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

	@Override
	public String toString() {
		return "Member [id=" + id + ", memberlevel=" + memberlevel + ", loginname=" + loginname + ", loginpwd="
				+ loginpwd + ", membername=" + membername + ", phone=" + phone + ", address=" + address + ", zip=" + zip
				+ ", regdate=" + regdate + ", lastdate=" + lastdate + ", logintimes=" + logintimes + ", email=" + email
				+ "]";
	}
    
    
}