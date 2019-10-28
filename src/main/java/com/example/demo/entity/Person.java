package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class Person {
    /*id*/
    private Integer personId;
    /*姓名*/
    private String personName;
    /*证件名称*/
    private String personCertName;
    /*证件号码*/
    private String personCertNum;
    /*单位*/
    private String personUnit;
    /*缴存基数*/
    private Double personBase;
    /*缴存比例*/
    private Double personRatio;
    /*系统计算缴存额*/
    private Double personAmount;
    /*个人登记号*/
    private String personRegister;

    public Person(Integer personId, String personName,
                  String personCertname, String personCertnum,
                  String personUnit, Double personBase,
                  Double personRatio, Double personAmount,
                  String personRegister) {
        this.personId = personId;
        this.personName = personName;
        this.personCertName = personCertname;
        this.personCertNum = personCertnum;
        this.personUnit = personUnit;
        this.personBase = personBase;
        this.personRatio = personRatio;
        this.personAmount = personAmount;
        this.personRegister = personRegister;
    }

    public Person() {
    }
}
