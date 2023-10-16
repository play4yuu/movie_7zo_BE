package com.campus.movie.mapper;

import org.apache.ibatis.annotations.Param;

import com.campus.movie.vo.UserDTO;

public interface MypageUpdateMapper {

	void updateUser(@Param("loginId") String loginId, @Param("userDTO") UserDTO userDTO);

	void deleteUser(String loginId);
}
