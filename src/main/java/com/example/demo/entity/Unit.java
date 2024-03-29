package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

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
    /**单位编号*/
    private String unitId;
    /**单位名称*/
    private String unitName;
    /**组织机构代码*/
    private String unitNum;
    /**单位证件名称*/
    private String unitCertName;
    /**单位证件号*/
    private String unitCertNum;
    /**单位性质代码*/
    private String unitType;
    /**单位法人*/
    private String unitLegal;
    /**法人证件名称*/
    private String unitLegalCertName;
    /**法人证件号码*/
    private String unitLegalCertNum;
    /**单位注册地址*/
    private String unitLoginAdd;
    /**单位办公地址*/
    private String unitWorkAdd;
    /**是否具有法人资格*/
    private String unitCondition;
    /**单位成立时间*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date unitCreatetime;
    /**上级主管单位*/
    private String superUnitName;
    /**单位登记经办人编号*/
    private String unitUserId;
    /**单位登记号*/
    private String unitAccountNum;

    public Unit(String unitId, String unitName, String unitNum, String unitCertName,
                String unitCertNum, String unitType, String unitLegal, String unitLegalCertName,
                String unitLegalCertNum, String unitLoginAdd, String unitWorkAdd,
                String unitCondition, Date unitCreatetime, String superUnitName,
                String unitUserId, String unitAccountNum) {
        this.unitId = unitId;
        this.unitName = unitName;
        this.unitNum = unitNum;
        this.unitCertName = unitCertName;
        this.unitCertNum = unitCertNum;
        this.unitType = unitType;
        this.unitLegal = unitLegal;
        this.unitLegalCertName = unitLegalCertName;
        this.unitLegalCertNum = unitLegalCertNum;
        this.unitLoginAdd = unitLoginAdd;
        this.unitWorkAdd = unitWorkAdd;
        this.unitCondition = unitCondition;
        this.unitCreatetime = unitCreatetime;
        this.superUnitName = superUnitName;
        this.unitUserId = unitUserId;
        this.unitAccountNum = unitAccountNum;
    }

    public Unit() {
    }
}
