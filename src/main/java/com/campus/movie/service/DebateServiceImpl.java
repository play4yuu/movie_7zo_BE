package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.DebateMapper;

@Service
public class DebateServiceImpl implements DebateService {
	@Inject
	DebateMapper mapper;
}
