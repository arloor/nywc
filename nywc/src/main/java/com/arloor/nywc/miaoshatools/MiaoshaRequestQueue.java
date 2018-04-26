package com.arloor.nywc.miaoshatools;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

@Component
public class MiaoshaRequestQueue {

    private Logger logger= LoggerFactory.getLogger(MiaoshaRequestQueue.class);

    private final BlockingQueue<String> queue=new LinkedBlockingQueue<>(1000);

    public boolean offer(String request) throws InterruptedException {
        try {
            boolean result=queue.offer(request,3, TimeUnit.SECONDS);
            logger.info(request +" 加入队列 "+result);
            return result;
        } catch (InterruptedException e) {
            //e.printStackTrace();
            throw e;
        }
    }

    public String take() throws InterruptedException{
        try {
            return queue.take();
        } catch (InterruptedException e) {
//            e.printStackTrace();
            throw e;
        }
    }

    public void clear(){
        queue.clear();
    }
}
