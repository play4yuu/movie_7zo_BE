package com.campus.movie.controller;

import java.io.Console;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.UsersService;
import com.campus.movie.vo.UserVO;
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
	public ModelAndView loginOk(String id, String wd, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		//���̵�� ����� ��ġ�ϴ� ���ڵ尡 ������ vo�� ���
		//���̵�� ����� ��ġ�ϴ� ���ڵ尡 ������ null�� �����޴´�.
		//UsersVO logVO =service.loginSelect(id, wd);
		UserVO logVO =service.movieloginSelect(id, wd);
		if(logVO!=null) {//�α��� ���� -> HttpSession�� ������ ��� Ȩ���� �̵�
			//���̵�, �̸�,�α��λ���
			session.setAttribute("id", logVO.getId());
			session.setAttribute("nickname", logVO.getName());
			session.setAttribute("logStatus", "Y");
			
			mav.setViewName("redirect:/");
		}else {//�α��� ���� -> �α��������� �̵�
			mav.setViewName("redirect:login");
		}
		return mav;
	}
}
