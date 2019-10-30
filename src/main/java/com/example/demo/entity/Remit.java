package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 9:17
 */
@Getter
@Setter
public class Remit {
    /*单位登记号*/
    private  String remitUnitAccountNum;
    /*个人登记号*/
    private  String remitLoginNum;
    /*汇缴清册序号*/
    private String remitId;
    /*个人编号*/
    private String remitPersonNum;
    /*姓名*/
    private String name;
    /*证件名称*/
    private String remitCertName;
    /*国籍*/
    private String remitCountry;
    /*证件号*/
    private String remitCertNum;
    /*缴存基数*/
    private Double remitMoney;
    /*单位月缴存额*/
    private Double unitMonthlyDeposit;
    /*个人月缴存额*/
    private Double personMonthlyDeposit;
    /*月缴存额合计*/
    private Double monthlyDepositTotal;
    /*二级管理*/
    private String remitSmsgId;
    /*制卡状态*/
    private String remitCardStatus;
    /*缴存率*/
    private Double accountRatio;

    public Remit(String remitUnitAccountNum,String remitLoginNum,String remitId,String remitPersonNum,
                 String name,String remitCertName,String remitCountry,String remitCertNum,
                 Double remitMoney,Double unitMonthlyDeposit,Double personMonthlyDeposit,Double monthlyDepositTotal,
                 String remitSmsgId,String remitCardStatus,Double accountRatio){
        this.remitUnitAccountNum=remitUnitAccountNum;
        this.remitLoginNum=remitLoginNum;
        this.remitId=remitId;
        this.remitPersonNum=remitPersonNum;
        this.name=name;
        this.remitCertName=remitCertName;
        this.remitCountry=remitCountry;
        this.remitCertNum=remitCertNum;
        this.remitMoney=remitMoney;
        this.unitMonthlyDeposit=unitMonthlyDeposit;
        this.personMonthlyDeposit=personMonthlyDeposit;
        this.monthlyDepositTotal=monthlyDepositTotal;
        this.remitSmsgId=remitSmsgId;
        this.remitCardStatus=remitCardStatus;
        this.accountRatio=accountRatio;
    }

    public Remit() {


    }
}
