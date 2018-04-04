package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.UserDao;
import com.arloor.jianbujing.domain.Imageinfo;
import com.arloor.jianbujing.domain.UserInfo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/user")
public class UserService {
    @Autowired
    private UserDao userDao;

    @RequestMapping("/updateuser")
    public void updateUser(
            @RequestParam String openid,
            @RequestParam String nickname
    ){

        if(userDao.updateUser(openid, nickname)==0){
            userDao.insertUser(openid,nickname);
        }
    }

    @RequestMapping("/updatecomment")
    public void updatecomment(
            @RequestParam String openid,
            @RequestParam String key,
            @RequestParam String comment
    ){
        if(userDao.updateComment(openid,key,comment)==0){
            userDao.insertComment(openid,key,comment);
        }
    }

    @RequestMapping("/viewusers")
    public List<UserInfo> viewUsers(){
        return userDao.selectAllUser();
    }

    @RequestMapping("updatereply")
    public void updatereply(
            @RequestParam String openid,
            @RequestParam String key,
            @RequestParam String reply
    ){
        userDao.updateReply(openid,key,reply);
    }

    @RequestMapping("/viewmine")
    public List<Imageinfo> viewmine(
            @RequestParam(defaultValue = "1") int start,
            @RequestParam int pageSize,
            @RequestParam(defaultValue = "0") long largeseconds,
            @RequestParam(defaultValue = "0") long smallseconds,
            @RequestParam String openid
    ){
        List<Imageinfo> imageinfoList;
        //说明是第一次加载图片,直接找最新的
        if(largeseconds==0&&smallseconds==0){
            PageHelper.startPage(start, pageSize);
            imageinfoList=userDao.selectMineNewer(openid,0);
            return imageinfoList;
        }else{//非第一次加载
            //首先找新于已有的
            PageHelper.startPage(start, pageSize);
            imageinfoList=userDao.selectMineNewer(openid,largeseconds);
            if(!imageinfoList.isEmpty()){
                return imageinfoList;
            }else {
                //再找旧于已有的
                PageHelper.startPage(start, pageSize);
                imageinfoList=userDao.selectMineOlder(openid,smallseconds);
                return imageinfoList;
            }
        }
    }
}
