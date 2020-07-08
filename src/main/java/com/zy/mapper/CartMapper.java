package com.zy.mapper;


import com.zy.entity.Cart;

public interface CartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);

	Cart selectById(Integer id);

	void updateCart(Integer id);

	int updateCartStatus(Integer id);

	

}