package com.campus.movie.vo;

import lombok.Data;

@Data
public class RateVO {
	private int rate_id;
	private int movie_id;
	private int star;
	private String nickname;
	private String coment;
	private String input_time;
}
