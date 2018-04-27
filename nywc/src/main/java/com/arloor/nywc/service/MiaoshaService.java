package com.arloor.nywc.service;


import com.arloor.nywc.miaoshatools.MiaoshaRequestQueue;
import com.arloor.nywc.miaoshatools.MiaoshaStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/miaosha")
public class MiaoshaService {

    @Autowired
    MiaoshaStatus miaoshaStatus;

    @Autowired
    MiaoshaRequestQueue queue;

    @RequestMapping("/requestmiaosha")
    public String  doMiaosha(@RequestParam String pname,@RequestParam String openId){
        Boolean isStart=miaoshaStatus.getStatus(pname);
        if(isStart==null){
            return "秒杀尚未开始，请不要使用脚本";
        }else if(!isStart){
            return "秒杀已结束";
        }else{
            try {
                if(!queue.offer(pname+"<and>"+openId)){
                    return "秒杀失败";
                }else{
                    return "正在秒杀";
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                return "秒杀失败";
            }
        }
    }

    @RequestMapping("/checkresult")
    public String  checkresult(@RequestParam String openId){
        if(miaoshaStatus.getSuccessUser(openId)){
            return "秒杀成功，请稍后到个人中心查看";
        }else {
            return "暂无结果";
        }
    }
}
