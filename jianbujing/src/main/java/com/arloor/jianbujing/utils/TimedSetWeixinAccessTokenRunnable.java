package com.arloor.jianbujing.utils;


import com.arloor.jianbujing.service.WeixinService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;




/**
 * 定时更新access_token的任务
 */
@Component
public class TimedSetWeixinAccessTokenRunnable implements Runnable{

    @Autowired
    private WeixinService weixinService;


    @Override
    public void run() {
        System.out.println("定时任务：更新微信的access_token为："+weixinService.updateaccesstoken());
    }
}
