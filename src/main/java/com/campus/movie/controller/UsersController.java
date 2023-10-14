package com.campus.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.UsersService;
import com.campus.movie.vo.UsersVO;

@Controller
public class UsersController {
	@Autowired
	UsersService service;
	
	//로그인
	@RequestMapping("/users/login")
	public String login() {
		return "users/login";
	}

	//로그인(DB)
	@PostMapping("/users/loginOk")
	public ModelAndView loginOk(String userid, String userpwd, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		//아이디와 비번이 일치하는 레코드가 있으면 vo에 담고
		//아이디와 비번이 일치하는 레코드가 없으면 null을 돌려받는다.
		UsersVO logVO =service.loginSelect(userid, userpwd);
		
		if(logVO!=null) {//로그인 성공 -> HttpSession에 정보를 기록 홈으로 이동
			//아이디, 이름,로그인상태
			session.setAttribute("logId", logVO.getUserid());
			session.setAttribute("logName", logVO.getUsername());
			session.setAttribute("logStatus", "Y");
			
			System.out.println("Logged in user ID: " + session.getAttribute("logId"));
	        System.out.println("Logged in user Name: " + session.getAttribute("logName"));
	        System.out.println("Login Status: " + session.getAttribute("logStatus"));
			
			mav.setViewName("redirect:/");
		}else {//로그인 실패 -> 로그인폼으로 이동
			mav.setViewName("redirect:login");
		}
		return mav;
	}
}
