package com.campus.movie.vo;

import lombok.Data;

@Data
public class ShowingVO {
	private int show_id;
	private int screen_id;
	private int theater_id;
	private int movie_id;
	private int reservation_status;
	private String show_date;
	private String show_start;
	private String show_end;

}
