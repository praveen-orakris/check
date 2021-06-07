package com.xpertreeapi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class Demo {
	@RequestMapping(value="/check", method=RequestMethod.GET)
	public String testMethod(HttpServletRequest request) {
		
		return "Hi Buddy";
	}
}
