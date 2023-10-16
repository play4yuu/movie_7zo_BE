package com.campus.movie.mapper;

import com.campus.movie.vo.UserVO;
import com.campus.movie.vo.UsersVO;

public interface UsersMapper {
	public UsersVO loginSelect(String userid, String userpwd);//로그인
	public UserVO movieloginSelect(String id, String pw);//로그인
}
