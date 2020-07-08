package com.zy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zy.entity.Cartselectedmer;

public interface CartselectedmerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cartselectedmer record);

    int insertSelective(Cartselectedmer record);

    Cartselectedmer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cartselectedmer record);

    int updateByPrimaryKey(Cartselectedmer record);

	List<Cartselectedmer> findCartSelect(Integer id);

	Cartselectedmer selectFromCart(@Param("cartid")Integer cartid, @Param("merid")Integer merid);

	int updateByPrimaryKeySelectiveOne(Cartselectedmer csdm);

	int deleteByCart(Integer id);
	
}