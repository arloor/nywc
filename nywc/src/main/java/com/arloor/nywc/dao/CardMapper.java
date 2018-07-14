package com.arloor.nywc.dao;


import com.arloor.nywc.model.CardDetail;
import com.arloor.nywc.model.DcommentModel;
import com.arloor.nywc.model.SingleCardDetail;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CardMapper {
    List<CardDetail> getCardsDetails(@Param("minSeconds") long minSeconds,@Param("maxSeconds")long maxSeconds);
    List<CardDetail> getNewestCardsDetails();
    List<DcommentModel> getCommentsByDkey(@Param("dkey") String dkey);

    SingleCardDetail getSingleCardDetail(@Param("dkey") String dkey);

    List<CardDetail> selectWantedDesinByopenId(@Param("openId") String openId);

    List<CardDetail> getCardsDetailsByTheme(@Param("theme") String theme);
}


