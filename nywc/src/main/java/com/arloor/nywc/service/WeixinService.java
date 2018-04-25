package com.arloor.nywc.service;

import com.arloor.nywc.dao.MemberMapper;
import com.arloor.nywc.domain.Member;
import com.arloor.nywc.model.OpenIdJson;
import com.arloor.nywc.utils.MyHttpClient;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/api/weixin")
public class WeixinService {



    private Logger logger= LoggerFactory.getLogger(WeixinService.class);

    @Autowired
    private MyHttpClient httpClient;

    private String accessTokenJson ="{\"access_token\":\"8__Z7Cf3BnUmz7-n1oUzSbLXJgOokDGXHxdaswVsc6IUXYzSqktGHVOL6MUIFo5Mi1SQHXYP7sMSloDa8uIcghOOQxhCQtw0zWEKVRNwbRI-Y46s0Vis62Y-OoUT43EEtqfa05w9bVsu2Az4MgONFiADAZYQ\",\"expires_in\":7200}";

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


    @RequestMapping("/updateaccesstoken")
//    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.READ_COMMITTED)
    public String updateaccesstoken() {
        String getUrl=String.format("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s",appid,appsecret);
        this.accessTokenJson=httpClient.get(getUrl);
        logger.info("更新access token为："+this.accessTokenJson);
        return this.accessTokenJson;
    }
    @RequestMapping("/accesstoken")
    public String getAccessTokenJson(){
        return this.accessTokenJson;
    }

}
