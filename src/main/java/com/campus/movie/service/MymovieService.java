package com.campus.movie.service;

import java.util.List;

import com.campus.movie.vo.MovieVO;

public interface MymovieService {
	public MovieVO movieSelect(int no);
	public List<MovieVO> getAllMovies();
}
