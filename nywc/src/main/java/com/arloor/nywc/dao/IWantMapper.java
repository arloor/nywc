package com.arloor.nywc.dao;

import com.arloor.nywc.domain.IWant;
import com.arloor.nywc.domain.IWantKey;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface IWantMapper {
    int deleteByPrimaryKey(IWantKey key);

    int insert(IWant record);

    int insertSelective(IWant record);

    IWant selectByPrimaryKey(IWantKey key);

    int updateByPrimaryKeySelective(IWant record);

    int updateByPrimaryKey(IWant record);

    int selectCountIwant(@Param("openId") String openId,@Param("dkey") String dkey);

    int deleteByDkeyOpenId(@Param("dkey") String dkey,@Param("wantOpenId") String wantOpenId);
}