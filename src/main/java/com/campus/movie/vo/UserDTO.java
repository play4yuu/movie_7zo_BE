package com.campus.movie.vo;

import lombok.Data;

@Data
public class UserDTO {
    private String id;
    private String pw;
    private String email;
    private String name;
    private String phone;
    private String nickname;
}