package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Imageinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ImageListDao {
    List<Imageinfo> selectPublicNewer(@Param("seconds") long seconds);

    List<Imageinfo> selectPublicOlder(long smallseconds);
}
