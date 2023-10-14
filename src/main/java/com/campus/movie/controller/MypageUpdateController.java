package com.campus.movie.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.campus.movie.service.MypageUpdateService;
import com.campus.movie.vo.UserDTO;

@Controller
@RequestMapping("/mypage")
public class MypageUpdateController {
	@Autowired
	MypageUpdateService service;
	
	@PutMapping("/update")
	@ResponseBody
	
	public ResponseEntity<?> updateUser(@RequestBody UserDTO userDTO, Principal principal) {
		
		String loginId = principal.getName();
		
		service.updateUser(loginId, userDTO);
		
		return ;
	}

}