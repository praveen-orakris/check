package com.xpertree.xpertreeapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@ComponentScan(value="com.xpertreeapi.*")
public class XpertreeApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(XpertreeApiApplication.class, args);
	}

}
