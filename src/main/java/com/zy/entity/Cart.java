package com.zy.entity;

import java.math.BigDecimal;

public class Cart {
	private Integer id;

	private Integer member;

	private BigDecimal money;

	private Integer cartstatus;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMember() {
		return member;
	}

	public void setMember(Integer member) {
		this.member = member;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
	}

	public Integer getCartstatus() {
		return cartstatus;
	}

	public void setCartstatus(Integer cartstatus) {
		this.cartstatus = cartstatus;
	}
}