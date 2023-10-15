package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MypageUpdateMapper;
import com.campus.movie.vo.UserDTO;

@Service
public class MypageUpdateServicempl implements MypageUpdateService{
	@Inject
	MypageUpdateMapper mapper;

	@Override
	public void updateUser(String loginId, UserDTO userDTO) {
		mapper.updateUser(loginId, userDTO);
	}
}
