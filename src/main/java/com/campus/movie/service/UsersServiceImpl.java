package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.UsersMapper;
import com.campus.movie.vo.UserVO;
import com.campus.movie.vo.UsersVO;

@Service
public class UsersServiceImpl implements UsersService {
	@Inject
	UsersMapper mapper;

	@Override
	public UsersVO loginSelect(String userid, String userpwd) {
		return mapper.loginSelect(userid, userpwd);
	}

	@Override
	public UserVO movieloginSelect(String id, String pw) {
		return mapper.movieloginSelect(id, pw);
	}

}
