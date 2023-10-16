package com.campus.movie.mapper;

import java.util.List;

import com.campus.movie.vo.MovieVO;

public interface MymovieMapper {
	public MovieVO movieSelect(int no);
	public List<MovieVO> getAllMovies();
}
