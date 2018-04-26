package com.arloor.nywc.miaoshatools;


import com.arloor.nywc.domain.MiaoshaActivity;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 保存秒杀的状态
 * Map<String,Boolean>——是pname--status的map
 */
@Component
public class MiaoshaStatus {
    private final ConcurrentHashMap<String,Boolean> miaoShaStatus=new ConcurrentHashMap<>();

    private Date miaoshaDate=null;

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
    }
}
