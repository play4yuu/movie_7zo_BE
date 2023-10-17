package com.campus.movie.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.campus.movie.service.TheaterService;
import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.SeatVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;

@Controller
public class TheaterController {
	@Autowired
	TheaterService service;
	
	@GetMapping("/")
	public ModelAndView goHome() {
		ModelAndView mav=new ModelAndView();
		
		List<MovieVO> mlist=service.movieList();
		mav.addObject("mlist", mlist);
		mav.setViewName("home");
		return mav;
	}
	
	@PostMapping("/theater/schedule")
	public ModelAndView goSchedule(int movie_id,int theater_id) {
		ModelAndView mav=new ModelAndView();

			System.out.println(movie_id);
			System.out.println(theater_id);
			List<ShowingVO> slist=service.showingList(movie_id,theater_id);
			MovieVO mVO=service.movieSelct(movie_id);
			TheaterVO tVO=service.theaterSelct(theater_id);
			
			System.out.println(slist.size());
	
			mav.addObject("slist", slist);
			mav.addObject("mVO", mVO);
			mav.addObject("tVO", tVO);
			mav.addObject("mnum",movie_id);
			mav.addObject("tnum",theater_id);
			mav.setViewName("theater/schedule");
		return mav;
	}
	
	@GetMapping("/ticketing/seat")
	public ModelAndView goSeat(ShowingVO sVO,HttpSession session) {
		ModelAndView mav=new ModelAndView();
		String id=(String)session.getAttribute("id");
		System.out.println(id);
		List<SeatVO> seatlist=service.seatList(sVO.getShow_id());
		MovieVO mVO=service.movieSelct(sVO.getMovie_id());
		mav.addObject("mVO", mVO);
		mav.addObject("seatlist", seatlist);
		mav.addObject("sVO", sVO);
		
		mav.setViewName("ticketing/seat");
		return mav;
	}
	

	@RequestMapping("/theater/theaterHome")
    public String getAllTheaters(Model model) {
        List<TheaterVO> theaters = service.getAllTheaters();
        model.addAttribute("theaters", theaters);
        return "theater/theaterHome";
    }
}
