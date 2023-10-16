package com.campus.movie.mapper;

import java.util.List;

import com.campus.movie.vo.AbookingConVO;
import com.campus.movie.vo.MovieVO;
import com.campus.movie.vo.ReservationVO;
import com.campus.movie.vo.ShowingVO;
import com.campus.movie.vo.TheaterVO;
import com.campus.movie.vo.UserVO;

public interface TicketingMapper {
	public ShowingVO getShowing(int show_id);
	public MovieVO getMovie(int movie_id);
	public TheaterVO getTheater(int theater_id);
	public UserVO movieloginSelect(String userid);
	public int reservationInsert(AbookingConVO AbcVO);
	public ReservationVO reservationSelect(AbookingConVO AbcVO);
	public int seatInsert(int show_id, int reservation_id,String reserv_seat);
	public List<MovieVO> getMovieList4();
}
