package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MymovieMapper;
import com.campus.movie.vo.UserDTO;

@Service
public class MypageUpdateServicepl implements MypageUpdateService{
	@Inject
	MymovieMapper mapper;

	@Override
	public void updateUser(String loginId, UserDTO userDTO) {
		mapper.updateUser(loginId, userDTO);
	}
}
