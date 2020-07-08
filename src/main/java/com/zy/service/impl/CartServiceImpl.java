package com.zy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zy.entity.Cart;
import com.zy.entity.Cartselectedmer;
import com.zy.entity.Menberlever;
import com.zy.mapper.CartMapper;
import com.zy.mapper.CartselectedmerMapper;
import com.zy.mapper.MenberleverMapper;
import com.zy.service.CartService;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Resource
	private CartMapper mapper;

	
	@Resource
	private CartselectedmerMapper csmapper;
	
	
	@Resource
	private MenberleverMapper mlmapper;
	
	@Override
	public Cart selectById(Integer id) {
		// TODO Auto-generated method stub
		Cart c = mapper.selectById(id);
		if (c == null) {
			Cart cart = new Cart();
			cart.setMember(id);
			cart.setCartstatus(0);
			mapper.insertSelective(cart);
			return cart;
		}
		return c;
	}

	@Override
	public List<Cartselectedmer> findCartSelect(Integer id) {
		// TODO Auto-generated method stub
		return csmapper.findCartSelect(id);
	}

	@Override
	public int insertCartselectedmer(Cartselectedmer csdm) {
		// TODO Auto-generated method stub
		return csmapper.insertSelective(csdm);
	}

	@Override
	public Cartselectedmer selectFromCart(Integer cartid, Integer merid) {
		// TODO Auto-generated method stub
		return csmapper.selectFromCart(cartid,merid);
	}

	@Override
	public int updateCartselectedmer(Cartselectedmer csdm) {
		// TODO Auto-generated method stub
		return csmapper.updateByPrimaryKeySelectiveOne(csdm);
	}

	@Override
	public Menberlever selectByLever(Integer member) {
		// TODO Auto-generated method stub
		return mlmapper.selectByLever(member);
	}

	@Override
	public void updateCart(Integer id) {
		// TODO Auto-generated method stub
		mapper.updateCart(id);
	}

	@Override
	public int delCart(Integer id) {
		// TODO Auto-generated method stub
		return csmapper.deleteByPrimaryKey(id);
	}

	@Override
	public int clearCart(Integer id) {
		// TODO Auto-generated method stub
		return csmapper.deleteByCart(id);
	}

	@Override
	public int updateCartStatus(Integer id) {
		// TODO Auto-generated method stub
		return mapper.updateCartStatus(id);
	}


}
