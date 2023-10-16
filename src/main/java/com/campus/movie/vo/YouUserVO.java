// �쉶�썝媛��엯 諛� �젙蹂댁뿉 �궗�슜�릺�뒗 VO
//유연주
package com.campus.movie.vo;
import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class YouUserVO {

    private int no;
    private String id;
    private String pw;
    private String email;
    private String name;
    private String phone;
    private String nickname;
    private String datetime;

}