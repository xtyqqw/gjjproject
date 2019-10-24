package com.example.demo.cxr.controller;

import com.example.demo.cxr.service.RemitService;
import com.example.demo.cxr.service.SecondmsgService;
import com.example.demo.entity.Remit;
import com.example.demo.entity.Secondmsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author 崔新睿
 * @data 2019/10/24 - 11:01
 */
@Controller
@RequestMapping("/secongmsg")
public class SecondmsgController {
    @Autowired
    private RemitService remitService;
    @Autowired
    private SecondmsgService secondmsgService;



    /**  二级管理页面
     * 新增页面
     * @return
     */
    @RequestMapping("/insertSec")

    public String insertSec(Secondmsg secondmsg){
         secondmsgService.insterSec(secondmsg);
        return "";
    }

    /**
     * 修改页面
     * @param secondmsg
     * @return
     */

    @RequestMapping("/updateSec")
    public Secondmsg update(Secondmsg secondmsg){
       int i=secondmsgService.updateSec(secondmsg);
        return null;
    }

    /**
     * 查询所有信息
     * @return
     */
    @RequestMapping("/selectAll")
    public List<Secondmsg> selectAll(){
       return secondmsgService.selectSecAll();

    }

    /**
     * 根据id查询对象
     * @param smsgId
     * @return
     */
    @RequestMapping("/selectById/{smsgId}")
    public Secondmsg selectById(@PathVariable("{smsgId}") String smsgId){
        return secondmsgService.selectById(smsgId);
    }

    /**
     * 根据id删除
     * @param smsgId
     * @return
     */
    @RequestMapping("/deleteSec/{smsgId}")
    public String deleteSec(@PathVariable("{smsgId}") String smsgId){
        int i=secondmsgService.deleteSec(smsgId);
      return "";
    }

    /**会缴清册页面
     * 新增remit
     * @param remit
     * @return
     */
    @RequestMapping("/insertRemit")
    public String insertRemit(Remit remit){
        int i=remitService.insterRemit(remit);

        return "";
    }

    /**
     * 修改remit
     * @param remit
     * @return
     */
    @RequestMapping("/updateRemit")
    public Remit updateRemit(Remit remit){
        int i=remitService.updateRemit(remit);
        return null;
    }

    /**
     * 查询所有信息
     * @return
     */
    @RequestMapping("/selectRemitAll")
    public List<Remit> selectRemitAll(){

        return remitService.selectRemitAll();
    }

    /**
     * 根据id查询单条记录
     * @param remitId
     * @return
     */
    @RequestMapping("/selectRemitById/{remitId}")
    public Remit selectRemitById(@PathVariable("{remitId}") String remitId){
        return remitService.selectRemitById(remitId);
    }

}
