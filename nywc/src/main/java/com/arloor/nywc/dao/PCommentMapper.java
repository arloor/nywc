package com.arloor.nywc.dao;

import com.arloor.nywc.domain.PComment;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PCommentMapper {
    int deleteByPrimaryKey(Integer pcid);

    int insert(PComment record);

    int insertSelective(PComment record);

    PComment selectByPrimaryKey(Integer pcid);

    int updateByPrimaryKeySelective(PComment record);

    int updateByPrimaryKey(PComment record);
}