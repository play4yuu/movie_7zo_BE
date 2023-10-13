package com.campus.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.campus.movie.mapper.TicketingMapper;

@Service
public class TicketingServiceImpl implements TicketingService {
	@Inject
	TicketingMapper mapper;
}
