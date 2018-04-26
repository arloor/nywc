package com.arloor.nywc.dao;

import com.arloor.nywc.domain.MiaoshaActivity;
import com.arloor.nywc.domain.MiaoshaActivityKey;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MiaoshaActivityMapper {
    int deleteByPrimaryKey(MiaoshaActivityKey key);

    int insert(MiaoshaActivity record);

    int insertSelective(MiaoshaActivity record);

    MiaoshaActivity selectByPrimaryKey(MiaoshaActivityKey key);

    int updateByPrimaryKeySelective(MiaoshaActivity record);

    int updateByPrimaryKey(MiaoshaActivity record);

    List<MiaoshaActivity> selectMiaoshaByTime(MiaoshaActivityKey key);
}