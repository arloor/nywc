package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Comment;
import com.arloor.jianbujing.domain.Imageinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ImageDao {
     void insert( Imageinfo imageinfo);

    void update(Imageinfo imageinfo);

    Imageinfo selectImageInfo(Imageinfo imageinfo);

    List<Comment> selectComments(@Param("key") String key);
}
