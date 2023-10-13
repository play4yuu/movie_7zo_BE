package com.campus.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {		
		return "home";
	}

	/*
	 * @RequestMapping(value = "/mymovie/info", method = RequestMethod.GET) public
	 * String mymovieInfo( Model model) { return "mymovie/info"; }
	 */
	@RequestMapping(value = "/mymovie/detail", method = RequestMethod.GET)
	public String mymovieDetail( Model model) {		
		return "mymovie/detail";
	}
	@RequestMapping(value = "/mymovie/search", method = RequestMethod.GET)
	public String mymovieSearch( Model model) {		
		return "mymovie/search";
	}
	@RequestMapping(value = "/debate/debateHome", method = RequestMethod.GET)
	public String debateDebateHome( Model model) {		
		return "debate/debateHome";
	}
	@RequestMapping(value = "/theater/schedule", method = RequestMethod.GET)
	public String theaterSchedule( Model model) {		
		return "theater/schedule";
	}
	@RequestMapping(value = "/theater/theaterHome", method = RequestMethod.GET)
	public String theaterTheaterHome( Model model) {		
		return "theater/theaterHome";
	}
	@RequestMapping(value = "/users/join", method = RequestMethod.GET)
	public String usersJoin( Model model) {		
		return "users/join";
	}
	@RequestMapping(value = "/users/search", method = RequestMethod.GET)
	public String usersSearch( Model model) {		
		return "users/search";
	}
	@RequestMapping(value = "/ticketing/bookingCon", method = RequestMethod.GET)
	public String ticketingBookingCon( Model model) {		
		return "ticketing/bookingCon";
	}
	@RequestMapping(value = "/ticketing/method", method = RequestMethod.GET)
	public String ticketingMethod( Model model) {		
		return "ticketing/method";
	}
	@RequestMapping(value = "/ticketing/payment", method = RequestMethod.GET)
	public String ticketingPayment( Model model) {		
		return "ticketing/payment";
	}
	@RequestMapping(value = "/ticketing/seat", method = RequestMethod.GET)
	public String ticketingSeat( Model model) {		
		return "ticketing/seat";
	}
	@RequestMapping(value = "/ticketing/ticketingHome", method = RequestMethod.GET)
	public String ticketingTicketingHome( Model model) {		
		return "ticketing/ticketingHome";
	}
	@RequestMapping(value = "/filetree", method = RequestMethod.GET)
	public String filetree( Model model) {		
		return "filetree";
	}
	@RequestMapping(value = "/mypage/movie_main", method = RequestMethod.GET)
	public String mypageMovieMain( Model model) {		
		return "mypage/movie_main";
	}

}
