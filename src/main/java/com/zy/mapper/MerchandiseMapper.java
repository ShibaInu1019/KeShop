package com.zy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zy.entity.Merchandise;

public interface MerchandiseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Merchandise record);

    int insertSelective(Merchandise record);

    Merchandise selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Merchandise record);

    int updateByPrimaryKeyWithBLOBs(Merchandise record);

    int updateByPrimaryKey(Merchandise record);
    
    List<Merchandise> selectMerAll();

	List<Merchandise> selectBySpecial(Integer special);

	List<Merchandise> findMerListById(@Param("nameKey")String nameKey, @Param("selKey")String selKey);
}