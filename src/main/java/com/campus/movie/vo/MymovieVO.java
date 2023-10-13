package com.campus.movie.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MymovieVO {
	private int movie_id;//영화 번호
	private String movie_name;//영화 이름
	private String director;//감독
	private String actor;//배우
	private int runtime;// 상영시간
	private Date show_date;//상영일
	private String genre;//장르
	private String synopsis;//설명
	private String poster_url;//포스터 url
	private String trailer_url;//트레일러 url
	private String rating;//연령
	private float reservationrate;//예매율
	private int audience_sum;//
}
