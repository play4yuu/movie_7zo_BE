package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.MymovieMapper;
import com.campus.movie.vo.MymovieVO;

@Service
public class MymovieServiceImpl implements MymovieService {
	@Inject
	MymovieMapper mapper;

	@Override
	public List<MymovieVO> getAllMovies() {
		return mapper.getAllMovies();
	}

	@Override
	public List<MymovieVO> getMoviesData() {
		return mapper.getMoviesData();
	}
//	
}
