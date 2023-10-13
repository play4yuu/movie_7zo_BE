package com.campus.movie.mapper;

import com.campus.movie.vo.UserVO;

public interface UserMapper {

    //로그인
    UserVO login(String id, String pw);

    // 회원가입
    int userInsert(UserVO vo);

    // 아이디 중복검사
    int idCheck(String id);

    //ID찾기 (필요정보 : 이름, 이메일 )
    String findId(String name, String email);

    //PW찾기 ( 필요정보 : id, 휴대전화, 이메일 )
    String findPw(String name, String phone, String email);

    UserVO join(String id, String pw, String nickname, String name, String phone, String email);

}
