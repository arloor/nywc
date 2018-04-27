package com.arloor.nywc.miaoshatools;

import com.arloor.nywc.dao.MiaoshaRecordMapper;

import com.arloor.nywc.domain.MiaoshaRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


import java.util.Date;

@Component
@Scope("prototype")
public class ProcessRequstRun  implements Runnable{
    private Logger logger= LoggerFactory.getLogger(ProcessRequstRun.class);

    @Autowired
    MiaoshaRequestQueue queue;

    @Autowired
    MiaoShaStorage storage;

    @Autowired
    MiaoshaStatus miaoshaStatus;


    @Autowired
    MiaoshaRecordMapper miaoshaRecordMapper;

    @Override
    public void run() {
        logger.info("ProcessRequstRun "+Thread.currentThread().getName()+" start");
        while(true){
            try {

                String request=queue.take();
                if(request==null){
                    continue;
                }

                logger.info("处理秒杀请求： "+request);
                //todo 处理request
                //几件事：
                //减少库存。如果库存为0，设置秒杀结束标志
                //数据持久化。
                String pname=request.split("<and>")[0];
                String openId=request.split("<and>")[1];

                //如果已经成功抢到一件，就没有再抢的机会了
                if(miaoshaStatus.getSuccessUser(openId)){
                    continue;
                }


                boolean result=storage.checkAndDecremt(pname);
                if(!result){//如果库存为0，则设置该产品的秒杀结束
                    miaoshaStatus.setStatus(pname,false);
                    queue.clear();
                }else{//进行数据持久化
                    //这里最好改成异步的
                    //todo

                    //这里增加内存中秒杀成功的用户
                    miaoshaStatus.addSuccessUser(openId);

                    Date date=miaoshaStatus.getDate();
                    MiaoshaRecord miaoshaRecord=new MiaoshaRecord();
                    miaoshaRecord.setPname(pname);
                    miaoshaRecord.setStartTime(date);
                    miaoshaRecord.setOpenId(openId);
                    miaoshaRecordMapper.insert(miaoshaRecord);
                }

            } catch (InterruptedException e) {
                //这里是为了能够停止处理秒杀请求的线程池
                //e.printStackTrace();
                logger.info(Thread.currentThread().getName()+" 停止处理秒杀请求");
                return;
            }
        }
    }
}
