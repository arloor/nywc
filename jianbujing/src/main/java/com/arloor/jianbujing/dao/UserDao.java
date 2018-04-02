package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Imageinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {
    void insertUser(@Param("openId")String opendId,@Param("nickName")String nickNname);
    int updateUser(@Param("openId")String opendId,@Param("nickName")String nickNname);

    List<Imageinfo> selectMineNewer(@Param("openid") String openid,@Param("seconds") long largeseconds);

    List<Imageinfo> selectMineOlder(@Param("openid") String openid,@Param("seconds") long smallseconds);
}
