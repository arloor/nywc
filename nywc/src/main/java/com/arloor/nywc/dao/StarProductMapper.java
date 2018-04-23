package com.arloor.nywc.dao;

import com.arloor.nywc.domain.StarProductKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StarProductMapper {
    int deleteByPrimaryKey(StarProductKey key);

    int insert(StarProductKey record);

    int insertSelective(StarProductKey record);
}