package com.campus.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.movie.service.MymovieService;
import com.campus.movie.vo.MymovieVO;

@Controller
public class MymovieController {
	@Autowired
	MymovieService service;
	
	 @RequestMapping("/mymovie/info")
	 public String getAllMovies(Model model) {
		List<MymovieVO> movies = service.getAllMovies();
	    model.addAttribute("movies", movies);
	    return "mymovie/info";
	 }
	 @RequestMapping("/mymovie/detail")
	 public String getMoviesData(Model model) {
		List<MymovieVO> movies = service.getMoviesData();
	    model.addAttribute("movies", movies);
	    return "mymovie/detail";
	 }
}