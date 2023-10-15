package com.campus.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.movie.service.TheaterService;
import com.campus.movie.vo.TheaterVO;

@Controller
public class TheaterController {
	@Autowired
	TheaterService service;
	
	@RequestMapping("/theater/theaterHome")
    public String getAllTheaters(Model model) {
        List<TheaterVO> theaters = service.getAllTheaters();
        model.addAttribute("theaters", theaters);
        return "theater/theaterHome";
    }
	
}
