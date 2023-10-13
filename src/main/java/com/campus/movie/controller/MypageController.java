package com.campus.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.campus.movie.service.MypageService;

@Controller
public class MypageController {
	@Autowired
	MypageService service;
}
