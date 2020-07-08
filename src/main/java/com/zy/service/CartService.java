package com.zy.service;

import java.util.List;

import com.zy.entity.Cart;
import com.zy.entity.Cartselectedmer;
import com.zy.entity.Menberlever;

public interface CartService {

	Cart selectById(Integer id);

	List<Cartselectedmer> findCartSelect(Integer id);

	int insertCartselectedmer(Cartselectedmer csdm);

	Cartselectedmer selectFromCart(Integer id, Integer id2);

	int updateCartselectedmer(Cartselectedmer csdm);

	Menberlever selectByLever(Integer member);

	void updateCart(Integer id);

	int delCart(Integer id);

	int clearCart(Integer id);

	int updateCartStatus(Integer id);



}
