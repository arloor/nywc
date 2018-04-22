package com.arloor.nywc;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;


@SpringBootApplication
public class NYWCApplication {

	public static void main(String[] args) {
		ApplicationContext app=SpringApplication.run(NYWCApplication.class, args);
	}

}
