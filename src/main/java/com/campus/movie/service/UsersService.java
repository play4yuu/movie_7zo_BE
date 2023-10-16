package com.campus.movie.service;

import com.campus.movie.vo.UserVO;
import com.campus.movie.vo.UsersVO;

public interface UsersService {
	public UsersVO loginSelect(String userid, String userpwd);
	public UserVO movieloginSelect(String id, String pw);
}
