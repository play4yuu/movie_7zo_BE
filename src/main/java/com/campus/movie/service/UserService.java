// ȸ������, �α��� � ���� UserService

package com.campus.movie.service;
import com.campus.movie.vo.UserVO;

public interface UserService {
    UserVO login(String id, String pw);
    int userInsert(UserVO vo);
    int idCheck(String id);
    String findId(String name, String email);
    String findPw(String name, String phone, String email);
}
