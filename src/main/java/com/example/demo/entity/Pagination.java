package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Pagination {
    /*当前页*/
    private Integer page;
    /*每页显示条数*/
    private Integer limit;
    /*起始页*/
    private Integer startPage;

    public Pagination(Integer page, Integer limit, Integer startPage) {
        this.page = page;
        this.limit = limit;
        this.startPage = startPage;
    }

    public Pagination() {
    }
}
