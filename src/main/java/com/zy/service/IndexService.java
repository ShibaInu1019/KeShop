package com.zy.service;

import java.util.List;

import com.zy.entity.Category;
import com.zy.entity.Merchandise;

public interface IndexService {

	List<Category> selectAll();

	List<Merchandise> selectMerAll();

	Merchandise selectById(int id);

	List<Merchandise> selectBySpecial(Integer special);

	List<Merchandise> findMerListById(String nameKey, String selKey);


}
