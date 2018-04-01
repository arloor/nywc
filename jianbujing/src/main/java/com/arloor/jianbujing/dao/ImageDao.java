package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Imageinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ImageDao {
    public void insert( Imageinfo imageinfo);
}
