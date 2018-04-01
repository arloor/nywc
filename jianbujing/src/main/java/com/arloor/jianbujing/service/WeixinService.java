package com.arloor.jianbujing.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/api/weixin")
public class WeixinService {

    @Value("${weixin.appid}")
    private String appid;
    @Value("${weixin.appsecret}")
    private String appsecret;

    //获取用户的openid
    @RequestMapping("/openid")
    public String openid(@RequestParam String js_code) {
        Mono<String> resp = WebClient.create()
                .get()
                .uri("https://api.weixin.qq.com/sns/jscode2session?appid={appid}&secret={secret}&grant_type=authorization_code&js_code={js_code}",appid,appsecret,js_code) //使用占位符
                .retrieve()
                .bodyToMono(String.class);
        return resp.block();
    }
}
