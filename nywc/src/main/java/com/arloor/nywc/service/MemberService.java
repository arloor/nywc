package com.arloor.nywc.service;

import com.arloor.nywc.dao.MemberMapper;
import com.arloor.nywc.dao.MiaoshaRecordMapper;
import com.arloor.nywc.dao.StarProductMapper;
import com.arloor.nywc.domain.Member;
import com.arloor.nywc.domain.MiaoshaRecord;
import com.arloor.nywc.domain.Product;
import com.arloor.nywc.model.OpenIdJson;
import com.arloor.nywc.utils.MyHttpClient;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/member")
public class MemberService {

    @Autowired
    MemberMapper memberMapper;
    @Autowired
    MiaoshaRecordMapper miaoshaRecordMapper;
    @Autowired
    StarProductMapper starProductMapper;

    private Logger logger= LoggerFactory.getLogger(WeixinService.class);

    @Autowired
    private MyHttpClient httpClient;

    @Value("${weixin.appid}")
    private String appid;
    @Value("${weixin.appsecret}")
    private String appsecret;
    @Value("${member.defaultAvatarURL}")
    private String defaultAvatarURL;
    @Value("${member.defaultBonus}")
    private long defaultBonus;
    @Value("${member.defaultRole}")
    private String defaultRole;

    public String getAppid() {
        return appid;
    }

    public String getAppsecret() {
        return appsecret;
    }

    //获取用户信息，包括openId
    @RequestMapping("/getinfo")
    public Member openid(@RequestParam String js_code) {
        String getUrl=String.format("https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&grant_type=authorization_code&js_code=%s",appid,appsecret,js_code);
        ObjectMapper objectMapper=new ObjectMapper();
        String openIdStr=httpClient.get(getUrl);
        OpenIdJson openIdJson=null;
        try {
            openIdJson=objectMapper.readValue(openIdStr,OpenIdJson.class);
            logger.info("openid为: "+openIdJson.getOpenid());
        } catch (IOException e) {
            e.printStackTrace();
        }

        Member member=null;
        //如果数据库中没有这个openId的用户
        if((member=memberMapper.selectByPrimaryKey(openIdJson.getOpenid()))==null){
            Member newMember=new Member();
            newMember.setOpenId(openIdJson.getOpenid());
            newMember.setAvatarURL(defaultAvatarURL);
            newMember.setBonus(defaultBonus);
            newMember.setRole(defaultRole);
            memberMapper.insertSelective(newMember);
            return newMember;
        }
        return member;
    }

    @RequestMapping("/uppdateinfo")
    public void update(
            @RequestBody Member member
    ){
        memberMapper.updateByPrimaryKeySelective(member);
    }

    @RequestMapping("miaoshaRecords")
    public List<MiaoshaRecord> miaoshaRecords(@RequestParam String openId){
        return miaoshaRecordMapper.selectMiaoshaRecordsByopenId(openId);
    }

    @RequestMapping("starProducts")
    public List<Product> starProducts(@RequestParam String openId){
        return starProductMapper.selectstarProductsByopenId(openId);
    }
}
