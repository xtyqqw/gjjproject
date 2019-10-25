package com.example.demo.cxr.controller;

import com.example.demo.cxr.service.RemitService;
import com.example.demo.cxr.service.SecondmsgService;
import com.example.demo.entity.CxrPagination;
import com.example.demo.entity.Remit;
import com.example.demo.entity.Secondmsg;
import com.example.demo.util.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @ResponseBody
    public ModelAndView insertSec(Secondmsg secondmsg){
        secondmsg.setSmsgId(UUIDUtil.getUUID());
        int i=secondmsgService.insterSec(secondmsg);
        ModelAndView mv=new ModelAndView();
        if(i>0){
            mv.setViewName("cxr/second");
            return mv;
        }else {
            return null;
        }

    }

    /**
     * 修改页面
     * @param secondmsg
     * @return
     */

    @RequestMapping("/updateSec")
    @ResponseBody
    public ModelAndView update(Secondmsg secondmsg){
        secondmsg.setSmsgId(UUIDUtil.getUUID());
       int update=secondmsgService.updateSec(secondmsg);
        ModelAndView mv=new ModelAndView();
        if(update>0){
            secondmsgService.updateSec(secondmsg);
            mv.setViewName("cxr/second");
            return mv;
        }else{
            return null;
        }


    }

    /**
     * 查询所有信息
     * @return
     */
    @RequestMapping("/selectAll")
    @ResponseBody
    public Map<String,Object> selectAll(CxrPagination cxrPagination){
        List<Secondmsg> list = secondmsgService.selectSecAll(cxrPagination);
        Integer count = secondmsgService.findCount();
        Map<String,Object> map = new HashMap();
        map.put("code",0);
        map.put("data",list);
        map.put("count",count);
        return map;
    }
    @RequestMapping(value = "/tosecond")
    public String toSecond(){
        return "cxr/second";
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
    @RequestMapping("/deleteSec")
    @ResponseBody
    public String deleteSec( String smsgId){
        int i=secondmsgService.deleteSec(smsgId);
        if(i>0){
            return "删除成功";
        }
      return "删除失败";
    }

    /**会缴清册页面
     * 新增remit
     * @param
     * @return
     */
    @RequestMapping("/insertRemit")
    @ResponseBody
    public ModelAndView insertRemit(Remit remit){
        remit.setRemitId(UUIDUtil.getUUID());
        int i=remitService.insterRemit(remit);
        ModelAndView mv=new ModelAndView();
        if(i>0){
            mv.setViewName("cxr/remitmsg");
            return mv;
        }
        return null;

    }

    /**
     * 修改remit
     * @param remit
     * @return
     */
    @RequestMapping("/updateRemit")
    public ModelAndView updateRemit(Remit remit){
        remit.setRemitId(UUIDUtil.getUUID());
        int i=remitService.updateRemit(remit);
        ModelAndView mv=new ModelAndView();
        if(i>0){
            remitService.updateRemit(remit);
            mv.setViewName("cxr/remitmsg");
            return mv;
        }

        return null;
    }

    /**
     * 查询所有信息
     * @return
     */
    @RequestMapping("/selectRemitAll")
    @ResponseBody
    public Map<String,Object> selectRemitAll(CxrPagination cxrPagination){
            List<Remit> list1=remitService.selectRemitAll(cxrPagination);
            Integer count1=remitService.findCount();
            Map<String,Object> map1 = new HashMap();
            map1.put("code",0);
            map1.put("data",list1);
            map1.put("count",count1);
            return map1;
    }
    @RequestMapping("/toremit")
    public String toRemit(){
        return "cxr/remitmsg";
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
