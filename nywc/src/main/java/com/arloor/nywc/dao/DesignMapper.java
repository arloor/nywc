package com.arloor.nywc.dao;

import com.arloor.nywc.domain.Design;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DesignMapper {
    int deleteByPrimaryKey(String dkey);

    int insert(Design record);

    int insertSelective(Design record);

    Design selectByPrimaryKey(String dkey);

    int updateByPrimaryKeySelective(Design record);

    int updateByPrimaryKey(Design record);

    void minusNumLike(@Param("dkey") String dkey);
    void addNumLike(@Param("dkey") String dkey);
}