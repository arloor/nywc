package com.arloor.nywc.utils;

import com.arloor.nywc.dao.MiaoshaActivityMapper;
import com.arloor.nywc.domain.MiaoshaActivity;
import com.arloor.nywc.domain.MiaoshaActivityKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Configuration
public class MiaoShaSchedule {
    private Logger logger= LoggerFactory.getLogger(MiaoShaSchedule.class);

    @Autowired
    MiaoshaActivityMapper miaoshaActivityMapper;

    @Scheduled(cron = "* * * * * *" )
//    @Scheduled(cron = "0 0 * * * *" )//每小时检查一次
    public void testMiaosha(){
        Calendar calendar=Calendar.getInstance();
        /**
         * todo
         * 测试才加这些，晚点删掉
         */
        calendar.set(Calendar.MONTH,4);
        calendar.set(Calendar.DATE,1);
        calendar.set(Calendar.HOUR_OF_DAY,10);

        calendar.set(Calendar.MINUTE,0);
        calendar.set(Calendar.MILLISECOND,0);
        calendar.set(Calendar.SECOND,0);
        Date checkDate=calendar.getTime();

        MiaoshaActivityKey activitykey=new MiaoshaActivityKey();
        activitykey.setStartTime(checkDate);
        List<MiaoshaActivity> activities=miaoshaActivityMapper.selectMiaoshaByTime(activitykey);
        if(!activities.isEmpty()){
            for (MiaoshaActivity cell:activities
                 ) {
                logger.info("准备秒杀活动 "+cell.toString());
                prepareForMiaoSha(cell);
            }
        }else{
            logger.info("无即将开始的秒杀活动");
        }
    }

    public void prepareForMiaoSha(MiaoshaActivity activity){
        //做两件事：放置标志秒杀开始的cdn
        //设置后台秒杀开始标志
    }
}
