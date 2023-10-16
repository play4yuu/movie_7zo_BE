package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.TicketingMapper;
import com.campus.movie.vo.AbookingConVO;
import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.ReservationVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;
import com.campus.movie.vo.UserVO;

@Service
public class TicketingServiceImpl implements TicketingService {
	@Inject
	TicketingMapper mapper;

	@Override
	public ShowingVO getShowing(int show_id) {
		return mapper.getShowing(show_id);
	}

	@Override
	public MovieVO getMovie(int movie_id) {
		return mapper.getMovie(movie_id);
	}

	@Override
	public TheaterVO getTheater(int theater_id) {
		return mapper.getTheater(theater_id);
	}

	@Override
	public int reservationInsert(AbookingConVO AbcVO) {
		return mapper.reservationInsert(AbcVO);
	}

	@Override
	public UserVO movieloginSelect(String userid) {
		return mapper.movieloginSelect(userid);
	}

	@Override
	public ReservationVO reservationSelect(AbookingConVO AbcVO) {
		return mapper.reservationSelect(AbcVO);
	}

	@Override
	public int seatInsert(int show_id, int reservation_id, String reserv_seat) {
		return mapper.seatInsert(show_id, reservation_id, reserv_seat);
	}

	@Override
	public List<MovieVO> getMovieList4() {
		return mapper.getMovieList4();
	}
}
