package com.campus.movie.vo;

import lombok.Data;

@Data
public class ReservationVO {
	private int reservation_id;
	private int movie_id;
	private int screen_id;
	private int no;
	private int price;
	private int nomal;
	private int child;
	private int senior;
	private String seat;
	private String method;
}
