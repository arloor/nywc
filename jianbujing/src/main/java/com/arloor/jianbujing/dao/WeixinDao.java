package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.model.Openidformid;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface WeixinDao {
    void insertOpenidAndFormID(Openidformid openidAndFormId);
}
