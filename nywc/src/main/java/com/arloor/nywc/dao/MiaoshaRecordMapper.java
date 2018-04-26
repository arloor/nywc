package com.arloor.nywc.dao;

import com.arloor.nywc.domain.MiaoshaRecordKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MiaoshaRecordMapper {
    int deleteByPrimaryKey(MiaoshaRecordKey key);

    int insert(MiaoshaRecordKey record);

    int insertSelective(MiaoshaRecordKey record);
}