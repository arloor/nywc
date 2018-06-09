package com.arloor.nywc.dao;

import com.arloor.nywc.domain.MiaoshaRecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MiaoshaRecordMapper {
    int deleteByPrimaryKey(Integer recordId);

    int insert(MiaoshaRecord record);

    int insertSelective(MiaoshaRecord record);

    MiaoshaRecord selectByPrimaryKey(Integer recordId);

    List<MiaoshaRecord> selectMiaoshaRecordsByopenId(@Param("openId") String openId);

    int updateByPrimaryKeySelective(MiaoshaRecord record);

    int updateByPrimaryKey(MiaoshaRecord record);
}