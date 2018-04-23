package com.arloor.nywc.dao;

import com.arloor.nywc.domain.IWant;
import com.arloor.nywc.domain.IWantKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IWantMapper {
    int deleteByPrimaryKey(IWantKey key);

    int insert(IWant record);

    int insertSelective(IWant record);

    IWant selectByPrimaryKey(IWantKey key);

    int updateByPrimaryKeySelective(IWant record);

    int updateByPrimaryKey(IWant record);
}