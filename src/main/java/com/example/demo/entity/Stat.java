package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Stat {
    private String remitUnitAccountNum;
    private String remitLoginNum;
    private String remitId;
    private String remitPersonNum;
    private String Name;
    private String remitCertName;
    private String remitCountry;
    private String remitCertNum;
    private Double remitMoney;
    private Double remitMonthlyDeposit;
    private Double personMonthlyDeposit;
    private Double monthlyDepositTotal;
    private String remitSmsgId;
    private String remitCardStatus;

    public Stat(String remitUnitAccountNum, String remitLoginNum, String remitId, String remitPersonNum, String name, String remitCertName, String remitCountry, String remitCertNum, Double remitMoney, Double remitMonthlyDeposit, Double personMonthlyDeposit, Double monthlyDepositTotal, String remitSmsgId, String remitCardStatus) {
        this.remitUnitAccountNum = remitUnitAccountNum;
        this.remitLoginNum = remitLoginNum;
        this.remitId = remitId;
        this.remitPersonNum = remitPersonNum;
        Name = name;
        this.remitCertName = remitCertName;
        this.remitCountry = remitCountry;
        this.remitCertNum = remitCertNum;
        this.remitMoney = remitMoney;
        this.remitMonthlyDeposit = remitMonthlyDeposit;
        this.personMonthlyDeposit = personMonthlyDeposit;
        this.monthlyDepositTotal = monthlyDepositTotal;
        this.remitSmsgId = remitSmsgId;
        this.remitCardStatus = remitCardStatus;
    }

    public Stat() {
    }
}
