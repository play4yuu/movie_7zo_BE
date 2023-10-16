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
        // 세션에서 사용자 ID 가져오기
        String loginId = (String) session.getAttribute("id");

        // 로그인 체크
        if (loginId == null) {
            return "redirect:/login";  // 로그인 페이지로 리다이렉트
        }

        service.updateUser(loginId, userDTO);
        return "redirect:/mypage/profile";
    }

    @PostMapping("/delete")
    public String deleteUser(HttpSession session) {
        // 세션에서 사용자 ID 가져오기
        String loginId = (String) session.getAttribute("id");

        // 로그인 체크
        if (loginId == null) {
            return "redirect:/login";  // 로그인 페이지로 리다이렉트
        }

        service.deleteUser(loginId);
        session.invalidate();  // 세션 정보 삭제
        return "redirect:/login";  // 로그인 페이지로 리다이렉트
    }
}
