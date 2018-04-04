package com.arloor.jianbujing;


import com.arloor.jianbujing.service.WeixinService;

import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;



/**
 * 检查未支付订单的超时情况的线程
 */
public class TimedSetWeixinAccessTokenRunnable implements Runnable{


    private WeixinService weixinService;

    public TimedSetWeixinAccessTokenRunnable(WeixinService weixinService) {
        this.weixinService=weixinService;
    }

    @Override
    public void run() {
        Mono<String> resp = WebClient.create()
                .get()
                .uri("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={appid}&secret={appsecret}",weixinService.getAppid(),weixinService.getAppsecret()) //使用占位符
                .retrieve()
                .bodyToMono(String.class);

        weixinService.setAccessTokenJson(resp.block());

        System.out.println("定时更新微信的access_token为："+weixinService.getAccessTokenJson());
    }
}
