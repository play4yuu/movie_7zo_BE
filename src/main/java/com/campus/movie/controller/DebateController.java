package com.campus.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.DebateService;
import com.campus.movie.vo.MovieVO;

@Controller
public class DebateController {
	@Autowired
	DebateService service;
	
	@GetMapping("/debate/debateHome")
	public ModelAndView debateHome() {
		ModelAndView mav=new ModelAndView();
		
		List<MovieVO> mlist=service.movieList();
		mav.addObject("mlist", mlist);
		mav.setViewName("debate/debateHome");
		return mav;
	}
}
