package com.zy.entity;

import java.math.BigDecimal;

public class Cartselectedmer {
	private Integer id;

	private Integer cart;

	private Integer merchandise;

	private Integer number;

	private BigDecimal price;

	private BigDecimal money;

	private String mername;

	private BigDecimal mprice;

	public BigDecimal getMprice() {
		return mprice;
	}

	public void setMprice(BigDecimal mprice) {
		this.mprice = mprice;
	}

	public String getMername() {
		return mername;
	}

	public void setMername(String mername) {
		this.mername = mername;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCart() {
		return cart;
	}

	public void setCart(Integer cart) {
		this.cart = cart;
	}

	public Integer getMerchandise() {
		return merchandise;
	}

	public void setMerchandise(Integer merchandise) {
		this.merchandise = merchandise;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
	}
}