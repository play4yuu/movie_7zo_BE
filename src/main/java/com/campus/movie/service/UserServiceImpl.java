// 회원가입, 로그인 등에 쓰이는 UserService impl

package com.campus.movie.service;

import com.campus.movie.mapper.UserMapper;
import com.campus.movie.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper mapper;

    @Override
    public UserVO login(String id, String pw) {
        return mapper.login(id, pw);
    }

    @Override
    public int userInsert(UserVO vo) {
        return mapper.userInsert(vo);
    }

    @Override
    public int idCheck(String id) {
        return mapper.idCheck(id);
    }

    @Override
    public String findId(String name, String email) {
        return mapper.findId(name, email);
    }

    @Override
    public String findPw(String name, String phone, String email) {
        return mapper.findPw(name, phone, email);
    }

    @Override
    public UserVO join(String id, String pw, String nickname, String name, String phone, String email) {
        return mapper.join(id, pw, nickname, name, phone, email);
    }
}
