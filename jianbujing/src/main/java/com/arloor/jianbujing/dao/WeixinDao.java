package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.model.Openidformid;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;


@Mapper
public interface WeixinDao {
    void insertOpenidAndFormID(Openidformid openidAndFormId);

    String selectFormId(@Param("openid") String touesr);

    void removeFormId(@Param("openid") String touesr,@Param("formid") String formId);

    void removeInvalidFormId(@Param("time") Timestamp timestamp);

    List<String> selectInvalidFormID(@Param("time") Timestamp timestamp);
}
