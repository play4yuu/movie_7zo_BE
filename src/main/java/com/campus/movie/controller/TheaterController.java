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
	        return "theaters"; // 이 부분은 필요한 View의 이름으로 변경해야 합니다.
	    }
	
}
