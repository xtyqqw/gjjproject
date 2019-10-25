package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * @author 崔新睿
 * @data 2019/10/25 - 9:08
 */
@Getter
@Setter
public class CxrPagination {
    /*当前页*/
    private Integer page;
    /*每页显示条数*/
    private Integer limit;
    /*起始索引*/
    private Integer startPage;
}
