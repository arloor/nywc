package com.arloor.jianbujing.utils;

import com.arloor.jianbujing.dao.WeixinDao;
import com.arloor.jianbujing.service.WeixinService;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

/**
 * 定时更新access_token的任务
 */
@Component
public class TimedRemoveFormIdRunnable implements Runnable{


    private WeixinDao weixinDao;

    public TimedRemoveFormIdRunnable(WeixinDao weixinDao) {
        this.weixinDao=weixinDao;
    }

    @Override
    public void run() {
        Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE,-8);
        Timestamp timestamp=new Timestamp(calendar.getTime().getTime());
        List<String> formIds=weixinDao.selectInvalidFormID(timestamp);
        System.out.println("即将删除下列早于"+timestamp+"的formId：");
        for (String formId:formIds
             ) {
            System.out.print(formId+" ");
        }
        System.out.println();
        weixinDao.removeInvalidFormId(timestamp);

    }
}