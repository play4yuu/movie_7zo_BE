package com.campus.movie.vo;

import lombok.Data;

@Data
public class TheaterVO {
	private int theater_id;
	private int total_seat;
	private float loca_x;
	private float loca_y;
	private String theater_name;
	private String region;
	private String theater_detail;
}
