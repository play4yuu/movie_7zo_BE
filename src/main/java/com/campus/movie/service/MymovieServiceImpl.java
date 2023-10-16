package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MymovieMapper;
import com.campus.movie.vo.MovieVO;

@Service
public class MymovieServiceImpl implements MymovieService {
	@Inject
	MymovieMapper mapper;

	@Override
	public MovieVO movieSelect(int no) {
		return mapper.movieSelect(no);
	}

	@Override
	public List<MovieVO> getAllMovies() {
		return mapper.getAllMovies();
	}
}
