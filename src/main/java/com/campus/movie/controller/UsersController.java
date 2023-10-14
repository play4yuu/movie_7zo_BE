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
	
	//�α���
	@RequestMapping("/users/login")
	public String login() {
		return "users/login";
	}

	//�α���(DB)
	@PostMapping("/users/loginOk")
	public ModelAndView loginOk(String userid, String userpwd, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		//���̵�� ����� ��ġ�ϴ� ���ڵ尡 ������ vo�� ���
		//���̵�� ����� ��ġ�ϴ� ���ڵ尡 ������ null�� �����޴´�.
		UsersVO logVO =service.loginSelect(userid, userpwd);
		
		if(logVO!=null) {//�α��� ���� -> HttpSession�� ������ ��� Ȩ���� �̵�
			//���̵�, �̸�,�α��λ���
			session.setAttribute("logId", logVO.getUserid());
			session.setAttribute("logName", logVO.getUsername());
			session.setAttribute("logStatus", "Y");
			
			System.out.println("Logged in user ID: " + session.getAttribute("logId"));
	        System.out.println("Logged in user Name: " + session.getAttribute("logName"));
	        System.out.println("Login Status: " + session.getAttribute("logStatus"));
			
			mav.setViewName("redirect:/");
		}else {//�α��� ���� -> �α��������� �̵�
			mav.setViewName("redirect:login");
		}
		return mav;
	}
}
