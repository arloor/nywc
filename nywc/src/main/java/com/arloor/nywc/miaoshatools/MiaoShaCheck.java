package com.arloor.nywc.miaoshatools;

import com.arloor.nywc.dao.MiaoshaActivityMapper;
import com.arloor.nywc.domain.MiaoshaActivity;
import com.arloor.nywc.domain.MiaoshaActivityKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Component
public class MiaoShaCheck implements ApplicationContextAware{
    ApplicationContext context;

    private Logger logger= LoggerFactory.getLogger(MiaoShaCheck.class);

    @Autowired
    MiaoshaStatus  miaoshaStatus;

    @Autowired
    MiaoShaStorage miaoShaStorage;

    @Autowired
    MiaoshaRequestQueue queue;

    //这个线程池是用于处理真正秒杀请求的
    ExecutorService executorService;

    @Autowired
    MiaoshaActivityMapper miaoshaActivityMapper;

    @Scheduled(cron = "0 * * * * *" )
//    @Scheduled(cron = "0 0 * * * *" )//每小时检查一次
    public void checkStart(){
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
            executorService= Executors.newFixedThreadPool(3);
            //开启处理秒杀请求的线程池
            executorService.submit(context.getBean(ProcessRequstRun.class));
            executorService.submit(context.getBean(ProcessRequstRun.class));
            executorService.submit(context.getBean(ProcessRequstRun.class));
            //设置秒杀状态中的秒杀日期
            setMiaoshaStatusDate(checkDate);
            for (MiaoshaActivity cell:activities
                 ) {
                logger.info("准备秒杀活动 "+cell.toString());
                prepareForMiaoSha(cell);
            }
        }else{
            logger.info("无即将开始的秒杀活动");
        }
    }

    private void setMiaoshaStatusDate(Date checkDate){
        miaoshaStatus.setDate(checkDate);
    }

    private void prepareForMiaoSha(MiaoshaActivity activity){
        //做两件事：放置标志秒杀开始的cdn
        //设置后台秒杀开始标志
        //将库存信息缓存到内存中
        String pname=activity.getPname();
        miaoShaStorage.setStorage(pname,activity.getNum());
        miaoshaStatus.setStatus(pname,true);
    }

//    @Scheduled(cron = "0 10 * * * *" )//每小时第10分检查一次，结束秒杀
    @Scheduled(cron = "40 * * * * *" )//测试用
    public void endMiaosha(){
        //清空此次秒杀的所有东西
        if(executorService!=null){
            logger.info("停止所有秒杀处理线程");
            executorService.shutdownNow();
            executorService=null;
        }
        miaoshaStatus.clear();
        miaoShaStorage.clear();
        queue.clear();
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.context=applicationContext;
    }
}
