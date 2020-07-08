package com.zy.service;

import java.util.List;

import com.zy.entity.Orders;

public interface OrderService {

	int submit(Integer id, Integer id2);

	List<Orders> findOrdersByMember(Integer id);

	Orders findOrderById(Integer oid);

	int deleteOrder(Integer id);



}
