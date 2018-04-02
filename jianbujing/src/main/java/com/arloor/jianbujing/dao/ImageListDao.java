package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Imageinfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ImageListDao {
    List<Imageinfo> selectPublic();

    int selectCountPublic();
}
