package com.arloor.nywc.utils;


import com.arloor.nywc.service.WeixinService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
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
    //交给spring定时执行，每118分钟更新一次
    @Scheduled(fixedDelay = 7080000)
    public void run() {
        logger.info("定时任务：更新access token");
        weixinService.updateaccesstoken();
    }
}
