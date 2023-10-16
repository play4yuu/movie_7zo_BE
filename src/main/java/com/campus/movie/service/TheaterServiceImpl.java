package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.TheaterMapper;
import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.SeatVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;

@Service
public class TheaterServiceImpl implements TheaterService {
	@Inject
	TheaterMapper mapper;

	@Override
	public List<ShowingVO> showingList(int movie_id, int theater_id) {
		return mapper.showingList(movie_id, theater_id);
	}

	@Override
	public List<SeatVO> seatList(int show_id) {
		return mapper.seatList(show_id);
	}

	@Override
	public List<MovieVO> movieList() {
		return mapper.movieList();
	}

	@Override
	public MovieVO movieSelct(int movie_id) {
		return mapper.movieSelct(movie_id);
	}

	@Override
	public TheaterVO theaterSelct(int theater_id) {
		return mapper.theaterSelct(theater_id);
	}



}
