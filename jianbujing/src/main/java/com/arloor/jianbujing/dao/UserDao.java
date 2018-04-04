package com.arloor.jianbujing.dao;

import com.arloor.jianbujing.domain.Imageinfo;
import com.arloor.jianbujing.domain.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {
    void insertUser(@Param("openId")String opendId,@Param("nickName")String nickNname);
    int updateUser(@Param("openId")String opendId,@Param("nickName")String nickNname);

    List<Imageinfo> selectMineNewer(@Param("openid") String openid,@Param("seconds") long largeseconds);

    List<Imageinfo> selectMineOlder(@Param("openid") String openid,@Param("seconds") long smallseconds);

    int updateComment(@Param("openId")String openid, @Param("key") String key, @Param("comment")String comment);

    void insertComment(@Param("openId")String openid, @Param("key") String key, @Param("comment")String comment);

    void updateReply(@Param("openId")String openid, @Param("key") String key, @Param("reply")String reply);

    List<UserInfo> selectAllUser();
}
