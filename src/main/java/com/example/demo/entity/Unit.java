package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * @program: Unit
 * @description: 单位表实体类
 * @author: xty
 * @create: 2019/10/21 21:04
 **/
@Getter
@Setter
public class Unit {
    private String unitId;
    private String unitName;
    private String unitNum;
    private String unitCertName;
    private String unitCertNum;
    private String unitType;
    private String unitLegal;
    private String unitLegalCertName;
    private String unitLegalCertNum;
    private String unitLoginAdd;
    private String unitWorkAdd;
    private String unitCondition;
    private Date unitCreatetime;
    private String superUnitName;
    private String unitUserId;
    private String unitAccountNum;
}
