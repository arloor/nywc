package com.arloor.nywc.dao;

import com.arloor.nywc.domain.Ticket;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TicketMapper {
    int deleteByPrimaryKey(String tname);

    int insert(Ticket record);

    int insertSelective(Ticket record);

    Ticket selectByPrimaryKey(String tname);

    int updateByPrimaryKeySelective(Ticket record);

    int updateByPrimaryKey(Ticket record);
}