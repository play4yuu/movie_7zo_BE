package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.DebateMapper;
import com.campus.movie.vo.MovieVO;

@Service
public class DebateServiceImpl implements DebateService {
	@Inject
	DebateMapper mapper;

	@Override
	public List<MovieVO> movieList() {
		return mapper.movieList();
	}
}
