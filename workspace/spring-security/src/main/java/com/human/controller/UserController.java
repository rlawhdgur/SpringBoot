package com.human.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {
	
	// 회원가입 화면
	@GetMapping("/join")
	public void join(Model model) throws Exception {
		log.info("회원가입 화면 ..");
	}
	
	@GetMapping({"", "/", "/index"})
	public String index() {
		log.info("사용자 페이지..");
		
		return "/user/index";
	}

}
