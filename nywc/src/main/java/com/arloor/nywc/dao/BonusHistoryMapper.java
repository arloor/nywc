package com.arloor.nywc.dao;

import com.arloor.nywc.domain.BonusHistory;
import com.arloor.nywc.domain.BonusHistoryKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BonusHistoryMapper {
    int deleteByPrimaryKey(BonusHistoryKey key);

    int insert(BonusHistory record);

    int insertSelective(BonusHistory record);

    BonusHistory selectByPrimaryKey(BonusHistoryKey key);

    int updateByPrimaryKeySelective(BonusHistory record);

    int updateByPrimaryKey(BonusHistory record);
}