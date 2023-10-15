package com.campus.movie.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.TheaterMapper;
import com.campus.movie.vo.TheaterVO;

@Service
public class TheaterServiceImpl implements TheaterService {
	@Inject
	TheaterMapper mapper;

	@Override
	public List<TheaterVO> getAllTheaters() {
		return mapper.getAllTheaters();
	}
}
