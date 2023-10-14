package com.campus.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.campus.movie.service.MypageService;
import com.campus.movie.vo.UserVO;

@Controller
public class MypageController {
	@Autowired
	MypageService service;
	
	@GetMapping("/profile")
	public String editProfile(HttpSession session, Model model) {
		String userId = (String) session.getAttribute("id");
		System.out.println("Session id: " + userId);
		
		/*if (userId==null) {
			return "redirect:/login";
		}*/
		
		UserVO user = service.getUserById(userId);
		model.addAttribute("user", user);
		
		return "mypage/movie_main";
	}
	
}
