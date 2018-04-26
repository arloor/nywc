package com.arloor.nywc.dao;

import com.arloor.nywc.domain.MiaoshaRecord;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MiaoshaRecordMapper {
    int deleteByPrimaryKey(Integer recordId);

    int insert(MiaoshaRecord record);

    int insertSelective(MiaoshaRecord record);

    MiaoshaRecord selectByPrimaryKey(Integer recordId);

    int updateByPrimaryKeySelective(MiaoshaRecord record);

    int updateByPrimaryKey(MiaoshaRecord record);
}