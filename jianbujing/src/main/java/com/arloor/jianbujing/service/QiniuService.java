package com.arloor.jianbujing.service;

import com.arloor.jianbujing.model.QiniuUpToken;
import com.qiniu.util.StringMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.qiniu.util.Auth;

@RestController
@RequestMapping("/api/qiniu")
public class QiniuService {
    @RequestMapping("/uptoken10year")
    public QiniuUpToken getuptoken10year(){
        String accessKey = "ZBBVzh8MXXphhCt-IGg9QKFY-PbVXZgHN5ZhsEuD";
        String secretKey = "NTJSwWLPyc4aO8XVLPRv6sOnQCeJmFj57gMjSpbJ";
        String bucket = "wwwarloor";
        Auth auth = Auth.create(accessKey, secretKey);
        StringMap putPolicy = new StringMap();
        putPolicy.put("returnBody", "{\"key\":\"$(key)\",\"hash\":\"$(etag)\",\"bucket\":\"$(bucket)\",\"fsize\":$(fsize)}");
        long expireSeconds = 315360000;
        String upToken = auth.uploadToken(bucket, null, expireSeconds, putPolicy);
        QiniuUpToken token=new QiniuUpToken();
        token.setUptoken(upToken);
        return token;
    }
    @RequestMapping("/uptoken")
    public QiniuUpToken getuptoken(){
        String accessKey = "ZBBVzh8MXXphhCt-IGg9QKFY-PbVXZgHN5ZhsEuD";
        String secretKey = "NTJSwWLPyc4aO8XVLPRv6sOnQCeJmFj57gMjSpbJ";
        String bucket = "wwwarloor";
        Auth auth = Auth.create(accessKey, secretKey);
        StringMap putPolicy = new StringMap();
        putPolicy.put("returnBody", "{\"key\":\"$(key)\",\"hash\":\"$(etag)\",\"bucket\":\"$(bucket)\",\"fsize\":$(fsize)}");
        long expireSeconds = 600;
        String upToken = auth.uploadToken(bucket, null, expireSeconds, putPolicy);
        QiniuUpToken token=new QiniuUpToken();
        token.setUptoken(upToken);
        return token;
    }
}
