package com.campus.movie.service;

import java.util.List;

import com.campus.movie.vo.MymovieVO;

public interface MymovieService {
	List<MymovieVO> getAllMovies();
	List<MymovieVO> getMoviesData();
}
