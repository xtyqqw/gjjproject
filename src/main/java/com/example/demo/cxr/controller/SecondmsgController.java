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
        ModelAndView mv=new ModelAndView();
        List<Secondmsg> list=secondmsgService.selectById(secondmsg.getSmsgSectionNum());
        if(list.size()!=0){
            mv.addObject("msg","部门编号重复，请重新输入");
            mv.setViewName("cxr/second");
            return mv;
        }
        //调用新增方法
        int i=secondmsgService.insterSec(secondmsg);

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
        ModelAndView mv=new ModelAndView();
        List<Secondmsg> list=secondmsgService.selectById(secondmsg.getSmsgSectionNum());
        if(list.size()!=0){
            mv.addObject("msg"," 部门编号重复，请重新输入");
            mv.setViewName("cxr/second");
            return mv;
        }
        //调用修改方法
        int update=secondmsgService.updateSec(secondmsg);

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
        //查询所有信息并分页显示
        List<Secondmsg> list = secondmsgService.selectSecAll(cxrPagination);
        //查询记录条数
        Integer count = secondmsgService.findCount();

        Map<String,Object> map = new HashMap();
        map.put("code",0);
        map.put("data",list);
        map.put("count",count);
        return map;
    }

    /**
     * 返回展示页面
     * @return
     */
    @RequestMapping(value = "/tosecond")
    public String toSecond(){
        return "cxr/second";
    }

    /**
     * 根据id查询对象
     * @param smsgSectionNum
     * @return
     */
    @RequestMapping("/selectById/{smsgSectionNum}")
    public List<Secondmsg> selectById(@PathVariable("{smsgSectionNum}") String smsgSectionNum){
        return secondmsgService.selectById(smsgSectionNum);
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
        ModelAndView mv=new ModelAndView();
         List<Remit> list = remitService.selectRemitById(remit.getRemitPersonNum());
        if(list.size() !=0){
           mv.addObject("msg","职工编号重复，请重新输入");
            mv.setViewName("cxr/remitmsg");

            return mv;
        }
        remit.setAccountRatio(0.12);
        //单位月缴存额=缴存基数*缴存率
        remit.setUnitMonthlyDeposit(remit.getRemitMoney()*remit.getAccountRatio());
        //个人月缴存额=缴存基数*缴存率
        remit.setPersonMonthlyDeposit(remit.getRemitMoney()*remit.getAccountRatio());
        //月缴存额=个人月存额+单位月存额
        remit.setMonthlyDepositTotal(remit.getPersonMonthlyDeposit()+remit.getUnitMonthlyDeposit());
        //调用修改方法
        int i=remitService.insterRemit(remit);

        if(i>0){
            mv.setViewName("cxr/remitmsg");
            return mv;
        }else {
        return null;
        }

    }

    /**
     * 修改remit
     * @param remit
     * @return
     */
    @RequestMapping("/updateRemit")
    public ModelAndView updateRemit(Remit remit){

        //设置缴存率12%
        remit.setAccountRatio(0.12);
        //单位月缴存额=缴存基数*缴存率
        remit.setUnitMonthlyDeposit(remit.getRemitMoney()*remit.getAccountRatio());
        //个人月缴存额=缴存基数*缴存率
        remit.setPersonMonthlyDeposit(remit.getRemitMoney()*remit.getAccountRatio());
        //月缴存额=个人月存额+单位月存额
        remit.setMonthlyDepositTotal(remit.getPersonMonthlyDeposit()+remit.getUnitMonthlyDeposit());
       //调用修改方法
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
     * @param remitPersonNum
     * @return
     */
    @RequestMapping("/selectRemitById/{remitPersonNum}")
    public List<Remit> selectRemitById(@PathVariable("{remitPersonNum}") String remitPersonNum){
        return remitService.selectRemitById(remitPersonNum);
    }
    @RequestMapping("/deleteRemit")
    @ResponseBody
    public String deleteRemit( String remitId){
        int i=remitService.deleteById(remitId);
        if(i>0){
            return "删除成功";
        }
        return "删除失败";
    }
}
