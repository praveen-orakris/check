package com.xpertree.xpertreeapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@ComponentScan({"com.xpertree.*","com.xpertreeapi.*"})
//@ComponentScan(value="com.xpertreeapi.*")
@EnableJpaRepositories("com.xpertree.dao")
@EntityScan("com.xpertree.model")
public class XpertreeApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(XpertreeApiApplication.class, args);
	}

}
