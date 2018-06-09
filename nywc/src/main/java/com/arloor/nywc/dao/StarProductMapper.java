package com.arloor.nywc.dao;

import com.arloor.nywc.domain.Product;
import com.arloor.nywc.domain.StarProductKey;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StarProductMapper {
    int deleteByPrimaryKey(StarProductKey key);

    int insert(StarProductKey record);

    int insertSelective(StarProductKey record);

    List<Product> selectstarProductsByopenId(@Param("openId") String openId);
}