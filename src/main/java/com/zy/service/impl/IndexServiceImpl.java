package com.zy.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zy.entity.Category;
import com.zy.entity.Merchandise;
import com.zy.mapper.CategoryMapper;
import com.zy.mapper.MerchandiseMapper;
import com.zy.service.IndexService;

@Service
@Transactional
public class IndexServiceImpl  implements IndexService{

	@Resource
	private CategoryMapper mapper;
	@Resource
	private MerchandiseMapper mmapper;
	
	@Override
	public List<Category> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public List<Merchandise> selectMerAll() {
		// TODO Auto-generated method stub
		return mmapper.selectMerAll();
	}

	@Override
	public Merchandise selectById(int id) {
		// TODO Auto-generated method stub
		return mmapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Merchandise> selectBySpecial(Integer special) {
		// TODO Auto-generated method stub
		return mmapper.selectBySpecial(special);
	}

	@Override
	public List<Merchandise> findMerListById(String nameKey, String selKey) {
		// TODO Auto-generated method stub
		System.out.println(nameKey);
		System.out.println(selKey);
		return mmapper.findMerListById(nameKey,selKey);
	}


}
