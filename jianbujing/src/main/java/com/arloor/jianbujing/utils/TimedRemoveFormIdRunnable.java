package com.arloor.jianbujing.utils;

import com.arloor.jianbujing.dao.WeixinDao;
import com.arloor.jianbujing.service.WeixinService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

/**
 * 定时更新access_token的任务
 */
@Component
public class TimedRemoveFormIdRunnable implements Runnable{
    private Logger logger= LoggerFactory.getLogger(TimedRemoveFormIdRunnable.class);


    @Autowired
    private WeixinDao weixinDao;

    @Override
    public void run() {
        Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE,-8);
        Timestamp timestamp=new Timestamp(calendar.getTime().getTime());
        List<String> formIds=weixinDao.selectInvalidFormID(timestamp);
        logger.info("启动删除过期formid的定时任务");
        System.out.println("定时任务：即将删除下列早于"+timestamp+"的formId：");
        for (String formId:formIds
             ) {
            System.out.print(formId+" ");
        }
        System.out.println();
        weixinDao.removeInvalidFormId(timestamp);

    }
}
