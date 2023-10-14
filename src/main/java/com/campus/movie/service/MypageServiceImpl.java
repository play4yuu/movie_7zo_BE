package com.campus.movie.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MypageMapper;
import com.campus.movie.vo.UserVO;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	MypageMapper mapper;

	@Override
	public UserVO getUserById(String userId) {
		return mapper.getUserById(userId);
	}
}
