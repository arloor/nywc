package com.arloor.nywc.dao;


import com.arloor.nywc.model.CardDetail;
import com.arloor.nywc.model.DcommentModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CardMapper {
    List<CardDetail> getCardsDetails(@Param("minSeconds") long minSeconds,@Param("maxSeconds")long maxSeconds);
    List<DcommentModel> getCommentsByDkey(@Param("dkey") String dkey);
}


