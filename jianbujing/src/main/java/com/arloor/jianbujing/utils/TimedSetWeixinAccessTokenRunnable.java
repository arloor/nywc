package com.arloor.jianbujing.utils;


import com.arloor.jianbujing.service.WeixinService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;




/**
 * 定时更新access_token的任务
 */
@Component
public class TimedSetWeixinAccessTokenRunnable implements Runnable{
    private Logger logger= LoggerFactory.getLogger(TimedSetWeixinAccessTokenRunnable.class);

    @Autowired
    private WeixinService weixinService;


    @Override
    public void run() {
        String accessTokenJson=weixinService.updateaccesstoken();
        logger.info("定时任务：更新access token为："+accessTokenJson);
    }
}
