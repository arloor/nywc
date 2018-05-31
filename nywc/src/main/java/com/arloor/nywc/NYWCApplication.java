package com.arloor.nywc;


import com.arloor.nywc.utils.TimedSetWeixinAccessTokenRunnable;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;


@SpringBootApplication
@EnableTransactionManagement
@EnableScheduling
public class NYWCApplication extends SpringBootServletInitializer {

	/**
	 * 用于war打包
	 * @param application
	 * @return
	 */
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(NYWCApplication.class);
	}

	public static void main(String[] args) {
		ApplicationContext app=SpringApplication.run(NYWCApplication.class, args);
//		TimedSetWeixinAccessTokenRunnable timedSetWeixinAccessTokenRunnable=app.getBean(TimedSetWeixinAccessTokenRunnable.class);
//		ScheduledExecutorService executor= Executors.newScheduledThreadPool(1);
//		//定时执行更新微信access_token的任务,access_token定义为2小时失效，我们就115分钟刷新一次
//		executor.scheduleAtFixedRate(timedSetWeixinAccessTokenRunnable,0, 115, TimeUnit.MINUTES);
	}

}
