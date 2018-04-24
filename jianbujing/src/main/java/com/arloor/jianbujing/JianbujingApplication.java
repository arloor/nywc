package com.arloor.jianbujing;

import com.arloor.jianbujing.utils.TimedRemoveFormIdRunnable;
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
		TimedSetWeixinAccessTokenRunnable timedSetWeixinAccessTokenRunnable=app.getBean(TimedSetWeixinAccessTokenRunnable.class);
		TimedRemoveFormIdRunnable timedRemoveFormIdRunnable=app.getBean(TimedRemoveFormIdRunnable.class);

		ScheduledExecutorService executor= Executors.newScheduledThreadPool(1);
		//定时执行更新微信access_token的任务,access_token定义为2小时失效，我们就115分钟刷新一次
		executor.scheduleAtFixedRate(timedSetWeixinAccessTokenRunnable,0, 115, TimeUnit.MINUTES);
		//定时执行删除过期form_id的任务。
		executor.scheduleAtFixedRate(timedRemoveFormIdRunnable,0, 8, TimeUnit.DAYS);

	}

}
