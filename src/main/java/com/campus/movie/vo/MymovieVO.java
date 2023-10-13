package com.campus.movie.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MymovieVO {
	private int movie_id;//��ȭ ��ȣ
	private String movie_name;//��ȭ �̸�
	private String director;//����
	private String actor;//���
	private int runtime;// �󿵽ð�
	private Date show_date;//����
	private String genre;//�帣
	private String synopsis;//����
	private String poster_url;//������ url
	private String trailer_url;//Ʈ���Ϸ� url
	private String rating;//����
	private float reservationrate;//������
	private int audience_sum;//
}
