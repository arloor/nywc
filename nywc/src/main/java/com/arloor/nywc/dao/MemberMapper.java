package com.arloor.nywc.dao;

import com.arloor.nywc.domain.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    int deleteByPrimaryKey(String openId);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(String openId);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}