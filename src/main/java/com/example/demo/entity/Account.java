package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * @program: Account
 * @description: 单位账户实体类
 * @author: xty
 * @create: 2019/10/21 21:47
 **/
@Getter
@Setter
public class Account {
    /**单位账户编号*/
    private String accountId;
    /**对应单位id*/
    private String accountUnitId;
    /**业务种类*/
    private String accountJtype;
    /**资金来源*/
    private String accountMfrom;
    /**是否开启二级辅助信息  默认0关闭 1开启*/
    private String accountIsopen;
    /**财政拨款单位*/
    private String accountMunit;
    /**业务经办单位*/
    private String accountBussinessSection;
    /**发薪日期  两位字符串只写几号*/
    private Integer accountMdate;
    /**首次汇缴月份  两位字符串只写月份*/
    private Integer accountFirstmonth;
    /**跨年清册月份  两位字符串只写月份*/
    private Integer accountClearMonth;
    /**缴存比例*/
    private Double accountRatio;
    /**每月是否需要确认人员清册*/
    private String accountIsclean;

    public Account(String accountId, String accountUnitId, String accountJtype, String accountMfrom,
                   String accountIsopen, String accountMunit, String accountBussinessSection,
                   Integer accountMdate, Integer accountFirstmonth, Integer accountClearMonth,
                   Double accountRatio, String accountIsclean) {
        this.accountId = accountId;
        this.accountUnitId = accountUnitId;
        this.accountJtype = accountJtype;
        this.accountMfrom = accountMfrom;
        this.accountIsopen = accountIsopen;
        this.accountMunit = accountMunit;
        this.accountBussinessSection = accountBussinessSection;
        this.accountMdate = accountMdate;
        this.accountFirstmonth = accountFirstmonth;
        this.accountClearMonth = accountClearMonth;
        this.accountRatio = accountRatio;
        this.accountIsclean = accountIsclean;
    }

    public Account() {
    }
}
