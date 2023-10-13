package com.campus.movie.vo;

import lombok.Data;

@Data
public class DebateDetailVO {
	private int debate_detail_id;
	private int no;
	private int debate_id;
	private String opinion;
	private String input_text;
	private String input_time;
}
