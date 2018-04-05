package com.arloor.jianbujing;

import com.arloor.jianbujing.service.WeixinService;
import com.arloor.jianbujing.utils.TimedSetWeixinAccessTokenRunnable;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
public class JianbujingApplication {

	public static void main(String[] args) {
		ApplicationContext app=SpringApplication.run(JianbujingApplication.class, args);
		WeixinService weixinService=app.getBean(WeixinService.class);

		ScheduledExecutorService executor= Executors.newScheduledThreadPool(1);
		//定时执行更新微信access_token的任务,access_token定义为2小时失效，我们就115分钟刷新一次
		executor.scheduleAtFixedRate(new TimedSetWeixinAccessTokenRunnable(weixinService),0, 115, TimeUnit.MINUTES);

	}

}
