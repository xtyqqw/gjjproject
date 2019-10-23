<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/23
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位开户</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 60%;heightpx: 1300px;box-shadow: 2px 2px 5px #737383;
            margin: 0px auto;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;margin-left: 300px;}
        .box{padding-left: 180px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;}
        /* 字体样式 */
        .box li label {width: 150px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 输入框的样式 */
        .box li .input{padding: 6px 0;font-size: 16px;width: 296px;height: 50px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;margin-left: 400px;}

    </style>

</head>
<body>
<div class="headimg">
    <img src="../img/head.png">
</div>
<div class="div1">
    <form class="waik" action="<%=request.getContextPath()%>/login/toLoginunit">
        <h2>单位开户申请表</h2>
        <ul class="box box2">
            <li>
                <label for="unit_name">单位登记号</label>
                <input type="text" placeholder="单位登记号" class="input" id="account_unit_id"
                       value="" name="account_unit_id" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_name">单位名称</label>
                <input type="text" placeholder="单位名称" class="input" id="unit_name"
                       value="" name="unit_name"/>
                <span class="error"></span>
            </li>
            <li>
                <label for="account_jtype">业务种类</label>
                <input type="radio" name="account_jtype" value="" title="" class="dan">
                &nbsp;住房公积金&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_jtype" value="" title="" class="dan">
                &nbsp;住房补贴&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_jtype" value="" title="" class="dan">
                &nbsp;住房基金&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_jtype" value="" title="" class="dan">
                &nbsp;住房维修基金
            </li>
            <li>
                <label for="account_mfrom">资金来源</label>
                <input type="radio" name="account_mfrom" value="" title="" class="dan">
                &nbsp;单位自筹&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_mfrom" value="" title="" class="dan">
                &nbsp;财政拨款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_mfrom" value="" title="" class="dan">
                &nbsp;财政拨款和单位自筹
            </li>
            <li>
                <label for="account_isopen">开通二级辅助信息</label>
                <input type="radio" name="account_isopen" value="" title="" class="dan">
                &nbsp;是&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_isopen" value="" title="" class="dan">
                &nbsp;否
            </li>
            <li>
                <label for="account_munit">财政拨款单位</label>
                <input type="radio" name="account_munit" value="" title="" class="dan">
                &nbsp;市财政&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_munit" value="" title="" class="dan">
                &nbsp;区县财政
            </li>
            <li>
                <label for="account_bussiness_section">业务经办部门</label>
                <input type="email" placeholder="请输入业务经办部门" class="input"
                       id="account_bussiness_section" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_budget_num">单位预算代码</label>
                <input type="text" placeholder="请输入单位预算代码" class="input"
                       id="unit_budget_num" />
                <span class="error"></span>
            </li>
            <li>
                <label for="phone">联系电话</label>
                <input type="text" placeholder="请输入联系电话" class="input"
                       id="phone" />
                <span class="error"></span>
            </li>
            <li>
                <label for="account_mdate">发薪日期</label>
                <input type="text" placeholder="请输入发薪日期" class="input"
                       id="account_mdate" />
                <span class="error"></span>
            </li>
            <li>
                <label for="account_firtmonth">首次汇缴月份</label>
                <input type="text" placeholder="请输入首次汇缴月份" class="input" id="account_firtmonth">
            </li>
            <li>
                <label for="account_clear_month">跨年清册核定月份</label>
                <input type="radio" name="account_clear_month" value="" title="" class="dan">
                &nbsp;1月&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_clear_month" value="" title="" class="dan">
                &nbsp;7月
            </li>
            <li>
                <label for="unit_account_ratio">单位缴存比例</label>
                <input type="text" placeholder="请输入单位缴存比例" class="input"
                       id="unit_account_ratio">
            </li>
            <li>
                <label for="user_account_ratio">个人缴存比例</label>
                <input type="text" placeholder="请输入个人缴存比例" class="input"
                       id="user_account_ratio">
            </li>
            <li>
                <label for="account_isclean">每月汇缴是否需要确认人员清册</label>
                <input type="radio" name="account_isclean" value="" title="" class="dan">
                &nbsp;是&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_isclean" value="" title="" class="dan">
                &nbsp;否
            </li>
            <li>
                <label for="account_way">缴款方式</label>
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;委托收款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;主动汇款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;转账支票&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;现金（刷卡）&nbsp;&nbsp;<br />
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;财政统发&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;转账交款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                &nbsp;在线支付
            </li>

        </ul>
        <div class="submit">
            <input type="submit" value="提交" />
        </div>
    </form>


</div>
</body>
</html>
