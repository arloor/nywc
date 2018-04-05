package com.arloor.jianbujing.service;

import com.arloor.jianbujing.dao.WeixinDao;

import com.arloor.jianbujing.model.Openidformid;
import com.arloor.jianbujing.utils.MyHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/api/weixin")
public class WeixinService {

    @Autowired
    private WeixinDao weixinDao;

    private String accessTokenJson ="null";

    public void setAccessTokenJson(String accessTokenJson) {
        this.accessTokenJson = accessTokenJson;
    }

    @Value("${weixin.appid}")
    private String appid;
    @Value("${weixin.appsecret}")
    private String appsecret;

    public String getAppid() {
        return appid;
    }

    public String getAppsecret() {
        return appsecret;
    }

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


    @RequestMapping("/updateaccesstoken")
    public String updateaccesstoken() {
        Mono<String> resp = WebClient.create()
                .get()
                .uri("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={appid}&secret={appsecret}",appid,appsecret) //使用占位符
                .retrieve()
                .bodyToMono(String.class);
        this.accessTokenJson =resp.block();
        return this.accessTokenJson;
    }
    @RequestMapping("/accesstoken")
    public String getAccessTokenJson(){
        return this.accessTokenJson;
    }

    @RequestMapping("/sendtemplatemessage")
    public String sendTemplateMessage(
            @RequestBody String json
    ){
        String accessToken=accessTokenJson.substring(accessTokenJson.indexOf("\":\"")+3);
        accessToken=accessToken.substring(0,accessToken.indexOf("\""));
        MyHttpClient httpClient=new MyHttpClient();


        System.out.println(json);
        String touesr=json.substring(json.indexOf("{start}")+7,json.indexOf("{end}"));
        String formId=weixinDao.selectFormId(touesr);
        if(formId==null){
            formId="the formId is a mock one";
        }
        json=json.replace("{start}","");
        json=json.replace("{end}","");

        json=json.replace("{toreplaceforformid}",formId);
        System.out.println(json);
        String resStr=httpClient.doPost("https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token="+accessToken,json);
        System.out.println(resStr);
        weixinDao.removeFormId(touesr,formId);
        return resStr;
    }

    @RequestMapping("/saveformid")
    public void saveformid(@RequestBody Openidformid openidformid){
        weixinDao.insertOpenidAndFormID(openidformid);
    }
}
