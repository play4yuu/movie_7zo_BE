package com.campus.movie.service;

import com.campus.movie.vo.UsersVO;


public interface UsersService {
	public UsersVO loginSelect(String userid, String userpwd);
}
