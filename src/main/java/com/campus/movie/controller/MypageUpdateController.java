package com.campus.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.campus.movie.service.MypageUpdateService;
import com.campus.movie.vo.UserDTO;

@Controller
@RequestMapping("/mypage")
public class MypageUpdateController {
    @Autowired
    MypageUpdateService service;
    
    @PostMapping("/update")
    public String updateUser(@ModelAttribute UserDTO userDTO, HttpSession session) {
        // ���ǿ��� ����� ID ��������
        String loginId = (String) session.getAttribute("id");

        // �α��� üũ
        if (loginId == null) {
            return "redirect:/login";  // �α��� �������� �����̷�Ʈ
        }

        service.updateUser(loginId, userDTO);
        return "redirect:/mypage/profile";
    }

    @PostMapping("/delete")
    public String deleteUser(HttpSession session) {
        // ���ǿ��� ����� ID ��������
        String loginId = (String) session.getAttribute("id");

        // �α��� üũ
        if (loginId == null) {
            return "redirect:/login";  // �α��� �������� �����̷�Ʈ
        }

        service.deleteUser(loginId);
        session.invalidate();  // ���� ���� ����
        return "redirect:/login";  // �α��� �������� �����̷�Ʈ
    }
}
