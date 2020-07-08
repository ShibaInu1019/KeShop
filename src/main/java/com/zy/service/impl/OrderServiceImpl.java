package com.zy.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zy.entity.Orders;
import com.zy.mapper.OrdersMapper;
import com.zy.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	
	@Resource
	private OrdersMapper mapper;
	
	@Override
	public int submit(Integer mid, Integer cid) {
		// TODO Auto-generated method stub
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String onumber = df.format(new Date());
		Orders o = new Orders();
		o.setCart(cid);
		o.setMember(mid);
		o.setOrderdate(new Date());
		o.setOrderno(onumber);
		o.setOrderstatus(1);
		
		return mapper.insertSelective(o);
	}

	@Override
	public List<Orders> findOrdersByMember(Integer id) {
		// TODO Auto-generated method stub
		return mapper.findOrdersByMember(id);
	}

	@Override
	public Orders findOrderById(Integer oid) {
		// TODO Auto-generated method stub
		return mapper.findOrderById(oid);
	}

	@Override
	public int deleteOrder(Integer id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}



}
