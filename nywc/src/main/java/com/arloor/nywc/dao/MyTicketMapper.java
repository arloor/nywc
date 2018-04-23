package com.arloor.nywc.dao;

import com.arloor.nywc.domain.MyTicket;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyTicketMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(MyTicket record);

    int insertSelective(MyTicket record);

    MyTicket selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(MyTicket record);

    int updateByPrimaryKey(MyTicket record);
}