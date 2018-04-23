package com.arloor.nywc.dao;

import com.arloor.nywc.domain.DComment;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DCommentMapper {
    int deleteByPrimaryKey(Integer dcid);

    int insert(DComment record);

    int insertSelective(DComment record);

    DComment selectByPrimaryKey(Integer dcid);

    int updateByPrimaryKeySelective(DComment record);

    int updateByPrimaryKey(DComment record);
}