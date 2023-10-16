package com.campus.movie.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.TicketingService;
import com.campus.movie.vo.AbookingConVO;
import com.campus.movie.vo.ApaymentVO;
import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.ReservationVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;
import com.campus.movie.vo.UserVO;

@Controller
public class TicketingController {
	@Autowired
	TicketingService service;
	
	@GetMapping("/ticketing/ticketingHome")
	public ModelAndView goticketingHome(AbookingConVO abcVO) {
		ModelAndView mav= new ModelAndView();
		List<MovieVO> m4list=service.getMovieList4();
		mav.addObject("m4list", m4list);
		mav.addObject("abcVO",abcVO);
		System.out.println(abcVO.getMovie_id());
		mav.setViewName("ticketing/ticketingHome");
		return mav;
	}
	
	@PostMapping("/ticketing/payment")
	public ModelAndView goPayment(ApaymentVO apVO,HttpSession session) {
		ModelAndView mav=new ModelAndView();
		
		String id=(String)session.getAttribute("id");
		ShowingVO svo= service.getShowing(apVO.getShow_id());
		MovieVO mvo=service.getMovie(svo.getMovie_id());
		TheaterVO tvo=service.getTheater(svo.getTheater_id());
		mav.addObject("id", id);
		mav.addObject("svo", svo);
		mav.addObject("mvo", mvo);
		mav.addObject("tvo", tvo);
		mav.addObject("apVO", apVO);
		mav.setViewName("ticketing/payment");
		return mav;
				
	}
	
	@PostMapping("/ticketing/bookingCon")
	public ModelAndView gobookingCon(AbookingConVO AbcVO) {
		ModelAndView mav = new ModelAndView();
		UserVO logVO =service.movieloginSelect(AbcVO.getId());
		System.out.println("!!!!!!!!!!!");

		
		System.out.println(logVO.getNo());
		AbcVO.setNo(logVO.getNo());
		int resultReservation=service.reservationInsert(AbcVO);
		ReservationVO rVO=service.reservationSelect(AbcVO);
		String[] seatEach=AbcVO.getSeat().split(",");
		for(int i=0;i<seatEach.length;i++) {
			System.out.println(seatEach[i]);
			int resultSeat =service.seatInsert( AbcVO.getShow_id(),rVO.getReservation_id(),seatEach[i]);
		}
		ShowingVO sVO= service.getShowing(AbcVO.getShow_id());
		MovieVO mVO=service.getMovie(sVO.getMovie_id());
		TheaterVO tVO=service.getTheater(sVO.getTheater_id());
		
		mav.addObject("rVO", rVO);
		mav.addObject("sVO", sVO);
		mav.addObject("mVO", mVO);
		mav.addObject("tVO", tVO);
		mav.addObject("AbcVO", AbcVO);
		mav.setViewName("ticketing/bookingCon");
		return mav;
		
	}
}
