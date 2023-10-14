package com.campus.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.campus.movie.service.TheaterService;

@Controller
public class TheaterController {
	@Autowired
	TheaterService service;
	
	 @GetMapping("/theaters")
	    public String getAllTheaters(Model model) {
	        List<TheaterVO> theaters = theaterMapper.getAllTheaters();
	        model.addAttribute("theaters", theaters);
	        return "theaters"; // �� �κ��� �ʿ��� View�� �̸����� �����ؾ� �մϴ�.
	    }
	
}
