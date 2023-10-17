package com.campus.movie.service;

import java.util.List;

import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.SeatVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;

public interface TheaterService {
	public List<ShowingVO> showingList(int movie_id, int theater_id);
	public List<SeatVO> seatList(int show_id);
	public List<MovieVO> movieList();
	public MovieVO movieSelct(int movie_id);
	public TheaterVO theaterSelct(int theater_id);
	public List<TheaterVO> getAllTheaters();
}
