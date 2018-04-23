package com.arloor.nywc.dao;

import com.arloor.nywc.domain.Product;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {
    int deleteByPrimaryKey(String pname);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String pname);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}