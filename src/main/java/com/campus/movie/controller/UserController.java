package com.campus.movie.controller;

//유연주
import com.campus.movie.service.UserService;
import com.campus.movie.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Objects;

@Controller
public class UserController {

	@Autowired
	private UserService service;

	// == 援ы쁽�빐�빞 �븯�뒗嫄� ==
	// 1.�쉶�썝媛��엯 v
	// 2.濡쒓렇�씤 v
	// 3.IDPW李얘린
	// 4.�븘�씠�뵒以묐났寃��궗v, �땳�꽕�엫以묐났寃��궗v , �옱�엯�젰李퐒
	// 5. 濡쒓렇�븘�썐 v

	// ------------------------------------------------

	// 1. �쉶�썝媛��엯
	// �쉶�썝媛��엯 �럹�씠吏� 留ㅽ븨
	@GetMapping("/join")
	public String insertUser() {
		System.out.println("�쉶�썝媛��엯 �떎�뻾...");
		return ("users/join");
	}

	// �쉶�썝媛��엯 �떎�뻾 + 泥댄겕
	@RequestMapping("/users/joinChk")
	public ModelAndView joinChk(UserVO vo) {
		ModelAndView mv = new ModelAndView();

		try {
			int joinResult = service.userInsert(vo);
			System.out.println("�쉶�썝媛��엯 寃곌낵 : " + joinResult);

			if (joinResult > 0) {
				System.out.println("�쉶�썝媛��엯 �꽦怨�!");
				mv.setViewName("redirect:/");

			} else {
				System.out.println("�쉶�썝媛��엯 �떎�뙣!");
				mv.setViewName("users/joinFail");
			}

		} catch (Exception e) {
			System.out.println("�쉶�썝媛��엯 �뿉�윭諛쒖깮" + e.getMessage());
			e.printStackTrace();
			mv.setViewName("users/joinFail");
		}

		return mv;
	}

	// 2. 濡쒓렇�씤
	@GetMapping("/login")
	public String login() {
		System.out.println("濡쒓렇�씤 �떎�뻾...");
		return ("users/login");
	}

	// 2.1 濡쒓렇�씤 援ы쁽
	@PostMapping("/loginchk")
	public ModelAndView loginOK(String id, String pw, HttpSession session) {
		System.out.println("濡쒓렇�씤 �떎�뻾以�...");
		ModelAndView mv = new ModelAndView();
		System.out.println("�뱾�뼱�삩 媛믫솗�씤 : " + id + " " + pw);

		// 濡쒓렇�씤 �떆�룄
		try {
			UserVO vo = service.login(id, pw);

			// 濡쒓렇�씤 �꽦怨�
			if (vo != null) {
				System.out.println("濡쒓렇�씤 �꽦怨� : " + vo.getId());
				mv.setViewName("redirect:/");
				session.setAttribute("id", vo.getId());
				session.setAttribute("nickname", vo.getNickname());
				session.setAttribute("logStatus", "Y");

			} else {
				// 濡쒓렇�씤 �떎�뙣
				System.out.println("濡쒓렇�씤 �떎�뙣");
				mv.setViewName("redirect:/");
			}
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
			e.printStackTrace();
		}
		return mv;
	}

	// 3. ID/PW 李얘린
	@GetMapping("/search")
	public String search() {
		System.out.println("�븘�씠�뵒/鍮꾨�踰덊샇 李얘린 �떎�뻾...");
		// 留뚯빟 濡쒓렇�씤 以묒씠�씪硫� �뼱�뼸寃뚰빐�빞�븯吏�?
		return ("users/search");
	}

	// 3.1 ID 李얘린
	@GetMapping("/searchResult")
	public ModelAndView searchId(String name, String email) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("name", name);
		mv.addObject("email", email);

		System.out.println("李얘린 �떎�뻾以�...");
		System.out.println("�뱾�뼱�삩 媛믫솗�씤 // �씠由� : " + name + "/ email : " + email);

		String result_id = service.findId(name, email);
		System.out.println("李얠� �븘�씠�뵒 : " + result_id);
		mv.addObject("result_id", result_id);

		mv.setViewName("users/searchResult");

		return mv;
	}

	// 3.2 PW 李얘린

	// 4-1. �븘�씠�뵒 以묐났寃��궗 若�
	@RequestMapping("/users/idchk")
	public ModelAndView idchk(@RequestParam String id) {
		ModelAndView mv = new ModelAndView();
		System.out.println("�븘�씠�뵒 以묐났寃��궗 �떎�뻾以�...");

		try {
			int result = service.idCheck(id);
			System.out.println("id 以묐났寃��궗 : " + result);

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

	// 4-2. �땳�꽕�엫 以묐났寃��궗��若�
	@RequestMapping("/users/nicknamechk")
	public ModelAndView nicknamechk(@RequestParam String nickname) {
		ModelAndView mv = new ModelAndView();
		System.out.println("�땳�꽕�엫 以묐났寃��궗 �떎�뻾以�...");

		try {
			int result = service.nickChk(nickname);

			System.out.println("nickname 以묐났寃��궗 : " + result);
			mv.addObject("result", result);
			mv.setViewName("users/nicknamechk");
			mv.addObject("nickname", nickname);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;

	}

	// 5. 濡쒓렇�븘�썐
	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {
		System.out.println("濡쒓렇�븘�썐 �떎�뻾...");
		session.invalidate();
		return ("redirect:/");
	}

}