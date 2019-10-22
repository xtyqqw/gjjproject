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
    /**用户编号*/
    private String userId;
    /**用户姓名*/
    private String userName;
    /**用户密码*/
    private String userPwd;
    /**证件名称*/
    private String userCertName;
    /**证件号码*/
    private String userCertNum;
    /**用户手机号*/
    private String userPhonenum;
    /**用户邮箱*/
    private String userEmail;
    /**用户类型 用于区分单位用户和个人用户*/
    private String userType;
    /**用户创建时间*/
    private Date userCreatetime;
    /**用户修改时间*/
    private Date useeUpdatetime;
    /**用户状态 用于区分普通用户和认证用户*/
    private String userStatus;
    /**用户所属单位编号*/
    private String userUnitId;

    public User(String userId, String userName, String userPwd, String userCertName,
                String userPhonenum, String userEmail, String userType, Date userCreatetime,
                Date useeUpdatetime, String userStatus, String userUnitId) {
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
