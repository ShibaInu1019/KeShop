package com.zy.mapper;

import java.util.List;

import com.zy.entity.Orders;

public interface OrdersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

	List<Orders> findOrdersByMember(Integer id);

	Orders findOrderById(Integer oid);
}