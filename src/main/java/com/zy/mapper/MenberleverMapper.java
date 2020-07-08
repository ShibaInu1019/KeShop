package com.zy.mapper;

import com.zy.entity.Menberlever;

public interface MenberleverMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menberlever record);

    int insertSelective(Menberlever record);

    Menberlever selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menberlever record);

    int updateByPrimaryKey(Menberlever record);

	Menberlever selectByLever(Integer member);
}