// 회원가입 및 정보에 사용되는 VO

package com.campus.movie.vo;
import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class UserVO {

    private int no;
    private String id;
    private String pw;
    private String email;
    private String name;
    private String phone;
    private String nickname;
    private String datetime;

}