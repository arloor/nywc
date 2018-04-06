package com.arloor.jianbujing.utils;


import com.arloor.jianbujing.service.WeixinService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;



/**
 * 定时更新access_token的任务
 */
@Component
public class TimedSetWeixinAccessTokenRunnable implements Runnable{

    @Autowired
    private WeixinService weixinService;


    @Override
    public void run() {
        Mono<String> resp = WebClient.create()
                .get()
                .uri("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={appid}&secret={appsecret}",weixinService.getAppid(),weixinService.getAppsecret()) //使用占位符
                .retrieve()
                .bodyToMono(String.class);

        weixinService.setAccessTokenJson(resp.block());

        System.out.println("定时任务：更新微信的access_token为："+weixinService.getAccessTokenJson());
    }
}
