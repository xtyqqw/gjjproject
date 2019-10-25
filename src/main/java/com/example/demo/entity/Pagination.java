package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Pagination {
    /*当前页*/
    private Integer page;
    /*每页显示条数*/
    private Integer limit;
    /*起始页*/
    private Integer startPage;
    /*名字*/
    private String personName;
    /*证件号码*/
    private String personCertNum;

    public Pagination(Integer page, Integer limit, Integer startPage, String personName, String personCertNum) {
        this.page = page;
        this.limit = limit;
        this.startPage = startPage;
        this.personName = personName;
        this.personCertNum = personCertNum;
    }

    public Pagination(Integer page, Integer limit, Integer startPage) {
        this.page = page;
        this.limit = limit;
        this.startPage = startPage;
    }

    public Pagination() {
    }
}
