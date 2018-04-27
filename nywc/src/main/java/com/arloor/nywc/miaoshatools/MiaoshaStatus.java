package com.arloor.nywc.miaoshatools;


import com.arloor.nywc.domain.MiaoshaActivity;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * 保存秒杀的状态
 * Map<String,Boolean>——是pname--status的map
 */
@Component
public class MiaoshaStatus {
    private final ConcurrentHashMap<String,Boolean> miaoShaStatus=new ConcurrentHashMap<>();

    private Date miaoshaDate=null;

    private final ConcurrentHashMap<String,Boolean> miaoShaUser=new ConcurrentHashMap<>();



    public void setStatus(String pname,boolean status){
        miaoShaStatus.put(pname,status);
    }

    public Boolean getStatus(String pname){
        return miaoShaStatus.get(pname);
    }

    public void setDate(Date date) {
        this.miaoshaDate = date;
    }

    public Date getDate(){
        return miaoshaDate;
    }

    public void clear(){
        miaoshaDate=null;
        miaoShaStatus.clear();
        miaoShaUser.clear();
    }

    public void addSuccessUser(String openId){
        miaoShaUser.put(openId,true);
    }

    public boolean getSuccessUser(String openId){
        return miaoShaUser.get(openId)!=null&&miaoShaUser.get(openId);
    }
}
