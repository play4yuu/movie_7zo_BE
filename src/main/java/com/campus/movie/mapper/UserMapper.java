package com.campus.movie.mapper;

import com.campus.movie.vo.UserVO;

public interface UserMapper {

    //�α���
    UserVO login(String id, String pw);

    // ȸ������
    int userInsert(UserVO vo);

    // ���̵� �ߺ��˻�
    int idCheck(String id);

    //IDã�� (�ʿ�����: �̸�, �̸���)
    String findId(String name, String email);

    //PWã�� ( �ʿ�����: id, �޴���ȭ, �̸���)
    String findPw(String name, String phone, String email);

}
