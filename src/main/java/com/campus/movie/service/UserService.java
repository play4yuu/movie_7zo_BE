// 회원가입, 로그인 등에 쓰이는 UserService

package com.campus.movie.service;
import com.campus.movie.vo.UserVO;

public interface UserService {
    UserVO login(String id, String pw);
    int userInsert(UserVO vo);
    int idCheck(String id);
    String findId(String name, String email);
    String findPw(String name, String phone, String email);
    UserVO join(String id, String pw, String nickname, String name, String phone, String email);

}
