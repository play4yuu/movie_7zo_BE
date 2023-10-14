package com.campus.movie.controller;

import com.campus.movie.service.UserService;
import com.campus.movie.vo.UserVO;
import com.mysql.cj.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService service;

    //1. 회원가입
    @GetMapping("/join")
    public String insertUser() {
        System.out.println("회원가입 실행...");
        return ("users/join");
    }

    //2. 로그인
    @GetMapping ("/login")
    public String login() {
        System.out.println("로그인 실행...");
        return ("users/login");
    }

    //2.1 로그인 구현
    @PostMapping ("/loginchk")
    public ModelAndView loginOK(String id, String pw, HttpSession session) {
        System.out.println("로그인 실행 중...");
        ModelAndView mv = new ModelAndView();
        System.out.println("들어온 값 확인 : " + id + " " + pw);

        //로그인 시도
        try {
            UserVO vo = service.login(id, pw);

            //로그인 성공
            if ( vo != null ) {
                System.out.println("로그인 성공 : " + vo.getId());
                mv.setViewName("redirect:/");
                session.setAttribute("id", vo.getId());
                session.setAttribute("nickname", vo.getNickname());

            } else {
                //로그인 실패
                System.out.println("로그인 실패");
                mv.setViewName("redirect:/");
            }
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
            e.printStackTrace();
        }

        return mv;

    }

    //3. ID/PW 찾기
    @GetMapping ("/search")
    public String search() {
        System.out.println("아이디/비밀번호 찾기 실행...");

        return ("users/search");
    }

    //3.1 ID 찾기

    //3.2 PW 찾기

    //4-1. 아이디 중복검사
    //4-2. 닉네임 중복검사

    //5. 로그아웃
    @RequestMapping ("/users/logout")
    public String logout(HttpSession session) {
        System.out.println("로그아웃 실행...");
        session.invalidate();
        return ("redirect:/");
    }

}