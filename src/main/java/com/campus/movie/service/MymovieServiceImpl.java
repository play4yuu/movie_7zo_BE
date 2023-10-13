package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MymovieMapper;

@Service
public class MymovieServiceImpl implements MymovieService {
	@Inject
	MymovieMapper mapper;
}
