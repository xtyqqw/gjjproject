package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * @program: User
 * @description: user实体类
 * @author: xty
 * @create: 2019/10/21 20:52
 **/
@Getter
@Setter
public class User {
    private String userId;
    private String userName;
    private String userPwd;
    private String userCertName;
    private String userPhonenum;
    private String userEmail;
    private String userType;
    private Date userCreatetime;
    private Date useeUpdatetime;
    private String userStatus;
    private String userUnitId;

    public User(String userId, String userName, String userPwd, String userCertName, String userPhonenum, String userEmail, String userType, Date userCreatetime, Date useeUpdatetime, String userStatus, String userUnitId) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userCertName = userCertName;
        this.userPhonenum = userPhonenum;
        this.userEmail = userEmail;
        this.userType = userType;
        this.userCreatetime = userCreatetime;
        this.useeUpdatetime = useeUpdatetime;
        this.userStatus = userStatus;
        this.userUnitId = userUnitId;
    }

    public User() {
    }
}
