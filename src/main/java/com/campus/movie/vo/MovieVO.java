package com.campus.movie.vo;

import lombok.Data;

@Data
public class MovieVO {
	private int movie_id;
	private int runtime;
	private int audience_sum;
	private float reservationrate;
	private String movie_name;
	private String director;
	private String actor;
	private String show_date;
	private String genre;
	private String synopsis;
	private String poster_url;
	private String trailer_url;
	private String rating;

	
}
