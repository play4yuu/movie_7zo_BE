package com.campus.movie.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.movie.service.MypageUpdateService;
import com.campus.movie.vo.UserDTO;

@Controller
@RequestMapping("/mypage")
public class MypageUpdateController {
	@Autowired
	MypageUpdateService service;
	
	@PostMapping("/update")
	
	public String updateUser(@ModelAttribute UserDTO userDTO, Principal principal) {
		// 로그인 체크
        if (principal == null) {
            return "redirect:/login";  // 로그인 페이지로 리다이렉트
        }

		String loginId = principal.getName();
		service.updateUser(loginId, userDTO);
		
		return "redirect:/mypage/profile";
	}

}