package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.TheaterMapper;

@Service
public class TheaterServiceImpl implements TheaterService {
	@Inject
	TheaterMapper mapper;
}
