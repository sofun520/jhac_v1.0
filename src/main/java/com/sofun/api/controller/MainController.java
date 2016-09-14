package com.sofun.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main.html")
	public String main2() {
		return "main";
	}

	@RequestMapping("/login.html")
	public String login() {
		return "login";
	}

}
