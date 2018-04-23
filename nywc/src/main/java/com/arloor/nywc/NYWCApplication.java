package com.arloor.nywc;


import com.arloor.nywc.utils.TimedSetWeixinAccessTokenRunnable;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;


@SpringBootApplication
public class NYWCApplication {

	public static void main(String[] args) {
		ApplicationContext app=SpringApplication.run(NYWCApplication.class, args);
		TimedSetWeixinAccessTokenRunnable timedSetWeixinAccessTokenRunnable=app.getBean(TimedSetWeixinAccessTokenRunnable.class);
		ScheduledExecutorService executor= Executors.newScheduledThreadPool(1);
		//定时执行更新微信access_token的任务,access_token定义为2小时失效，我们就115分钟刷新一次
		executor.scheduleAtFixedRate(timedSetWeixinAccessTokenRunnable,0, 115, TimeUnit.MINUTES);
	}

}
