package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.model.Openidformid;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface WeixinDao {
    void insertOpenidAndFormID(Openidformid openidAndFormId);

    String selectFormId(@Param("openid") String touesr);

    void removeFormId(@Param("openid") String touesr,@Param("formid") String formId);
}
