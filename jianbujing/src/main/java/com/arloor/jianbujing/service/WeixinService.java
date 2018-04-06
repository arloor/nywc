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

@RestController
@RequestMapping("/api/weixin")
public class WeixinService {

    @Autowired
    private WeixinDao weixinDao;
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

    //获取用户的openid
    @RequestMapping("/openid")
    public String openid(@RequestParam String js_code) {
        String getUrl=String.format("https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&grant_type=authorization_code&js_code=%s",appid,appsecret,js_code);
        return httpClient.get(getUrl);
    }


    @RequestMapping("/updateaccesstoken")
    public String updateaccesstoken() {
        String getUrl=String.format("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s",appid,appsecret);
        this.accessTokenJson=httpClient.get(getUrl);
        return httpClient.get(getUrl);
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


//        System.out.println(json);
        String touesr=json.substring(json.indexOf("{start}")+7,json.indexOf("{end}"));
        String formId=weixinDao.selectFormId(touesr);
        if(formId==null){
            formId="the formId is a mock one";
        }
        json=json.replace("{start}","");
        json=json.replace("{end}","");

        json=json.replace("{toreplaceforformid}",formId);
//        System.out.println(json);
        String resStr=httpClient.doPostJson("https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token="+accessToken,json);
//        System.out.println(resStr);
        weixinDao.removeFormId(touesr,formId);
        return resStr;
    }

    @RequestMapping("/saveformid")
    public void saveformid(@RequestBody Openidformid openidformid){
        weixinDao.insertOpenidAndFormID(openidformid);
    }
}
