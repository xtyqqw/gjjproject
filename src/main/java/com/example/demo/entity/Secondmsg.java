package com.example.demo.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 8:56
 */
@Getter
@Setter
public class Secondmsg {
    /*序号*/
    private String smsgId;
    /*部门编号*/
    private String smsgSectionNum;
    /*部门名称*/
    private String smsgSectionName;
    /*部门代码*/
    private String smsgCode;
    public Secondmsg(String smsgId,String smsgSectionNum,String smsgSectionName,String smsgCode){
       this.smsgId=smsgId;
       this.smsgSectionNum=smsgSectionNum;
       this.smsgSectionName=smsgSectionName;
        this.smsgCode=smsgCode;

    }
    public Secondmsg(){

    }
}
