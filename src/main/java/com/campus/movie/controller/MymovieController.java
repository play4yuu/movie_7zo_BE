package com.campus.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.MymovieService;
import com.campus.movie.vo.MovieVO;

@Controller
public class MymovieController {
	@Autowired
	MymovieService service;
	@GetMapping("/mymovie/search")
	public ModelAndView moviesearch() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("mymovie/search");
		return mav;
	}
	
	@GetMapping("/mymovie/detail")
	public ModelAndView movieifno(int movie_id) {
		ModelAndView mav=new ModelAndView();
		MovieVO mvo=service.movieSelect(movie_id);
		mav.addObject("mvo", mvo);
		mav.setViewName("mymovie/detail");
		
		return mav;
	}
	
	@RequestMapping("/mymovie/info")
	 public String getAllMovies(Model model) {
		List<MovieVO> movies = service.getAllMovies();
	    model.addAttribute("movies", movies);
	    return "mymovie/info";
	 }
	
}
