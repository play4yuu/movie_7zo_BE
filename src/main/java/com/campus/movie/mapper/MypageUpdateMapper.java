package com.campus.movie.mapper;

import com.campus.movie.vo.UserDTO;

public interface MypageUpdateMapper {

	void updateUser(String loginId, UserDTO userDTO);

}
