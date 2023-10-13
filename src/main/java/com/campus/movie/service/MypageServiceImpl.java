package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService {
	@Inject
	MypageMapper mapper;
}
