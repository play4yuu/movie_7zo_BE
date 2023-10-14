package com.campus.movie.controller;

import com.campus.movie.service.UserService;
import com.campus.movie.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService service;

    // == 구현해야 하는거 ==
    // 1.회원가입
    // 2.로그인 v
    // 3.IDPW찾기
    // 4.아이디중복검사v, 닉네임중복검사v => 재입력창 만들어야...
    // 5. 로그아웃 v

    // ------------------------------------------------

    //1. 회원가입
    // 회원가입 페이지 매핑
    @GetMapping("/join")
    public String insertUser() {
        System.out.println("회원가입 실행...");
        return ("users/join");
    }

    // 회원가입 실행 + 체크
    @RequestMapping("/users/joinChk")
    public ModelAndView joinChk(UserVO vo) {
        ModelAndView mv = new ModelAndView();

        // id값 POST 받은거 출력

        try {
            int joinResult = service.userInsert(vo);
            System.out.println("회원가입 결과 : " + joinResult);

            if (joinResult > 0) {
                System.out.println("회원가입 성공!");
                mv.setViewName("redirect:/");

            } else {
                System.out.println("회원가입 실패!");
                mv.setViewName("users/joinFail");
            }

        } catch (Exception e) {
            System.out.println("회원가입 에러발생" + e.getMessage());
            e.printStackTrace();
            mv.setViewName("users/joinFail");
        }

        return mv;
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
        System.out.println("로그인 실행중...");
        ModelAndView mv = new ModelAndView();
        System.out.println("들어온 값확인 : " + id + " " + pw);

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
        //만약 로그인 중이라면 어떻게해야하지?
        return ("users/search");
    }

    //3.1 ID 찾기

    //3.2 PW 찾기

    //4-1. 아이디 중복검사
    @RequestMapping ("/users/idchk")
    public ModelAndView idchk(@RequestParam String id) {
        ModelAndView mv = new ModelAndView();
        System.out.println("아이디 중복검사 실행중...");

        try {
            int result = service.idCheck(id);
            System.out.println("id 중복검사 : " + result);

            mv.addObject("result", result);

        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
            e.printStackTrace();
        }

        mv.setViewName("users/idchk");

        mv.addObject("id", id);
        System.out.println("id : " + id);

        return mv;

    }

    //4-2. 닉네임 중복검사
    @RequestMapping ("/users/nicknamechk")
    public ModelAndView nicknamechk(@RequestParam String nickname) {
        ModelAndView mv = new ModelAndView();
        System.out.println("닉네임 중복검사 실행중...");

        try {
            int result = service.nickChk(nickname);

            System.out.println("nickname 중복검사 : " + result);
            mv.addObject("result", result);
            mv.setViewName("users/nicknamechk");
            mv.addObject("nickname", nickname);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return mv;

    }

    //5. 로그아웃
    @RequestMapping ("/users/logout")
    public String logout(HttpSession session) {
        System.out.println("로그아웃 실행...");
        session.invalidate();
        return ("redirect:/");
    }

}