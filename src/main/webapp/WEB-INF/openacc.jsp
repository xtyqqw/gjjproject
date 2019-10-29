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
    <link rel="shortcut icon" href="/img/favicon.ico" />
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
        .box li .input{padding: 6px 0;font-size: 16px;width: 300px;height: 50px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .error{clear: both;display: block;color: red;padding-left: 170px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;}
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;}
        .submit .login{margin-left: 300px;}
        .submit .reset{margin-left: 100px;position: absolute;background-color: #dddddd;
            border: 1px solid #dddddd;color: #000000;}
    </style>

    <script type="text/javascript">
        //验证手机号
        function phone() {
            var regPhone = /^1([356789]\d|5[0-35-9]|7[3678])\d{8}$/;
            var phone = document.getElementById("unitPhone").value;
            var bool = regPhone.test(phone);
            if(bool == true){
                document.getElementById("phoneError").innerHTML="";
                return true;
            } else {
                document.getElementById("phoneError").innerHTML="请输入正确的手机号";
                document.getElementById("phoneError").style.color="red";
                return false;
            }
        }
        //发薪日期
        function date() {
            var regDate = /^([12][0-9]|30|[1-9])$/;
            var date = document.getElementById("account_mdate").value;
            var bool = regDate.test(date);
            if(bool == true){
                document.getElementById("dateError").innerHTML="";
                return true;
            } else {
                document.getElementById("dateError").innerHTML="请输入正确的日期号";
                document.getElementById("dateError").style.color="red";
                return false;
            }
        }
        //首次汇缴月份
        function month() {
            var regMonth = /^(?:1[0-2]|[1-9])$/;
            var month = document.getElementById("account_firtmonth").value;
            var bool = regMonth.test(month);
            if (bool == true) {
                document.getElementById("monthError").innerHTML = "";
                return true;
            } else {
                document.getElementById("monthError").innerHTML = "请输入正确的月份";
                document.getElementById("monthError").style.color = "red";
                return false;
            }
        }
        function check() {
            var check = phone() && date() && month();
            return check;
        }
    </script>

</head>
<body>
<div class="headimg">
    <img src="../img/head.png">
</div>
<div class="div1">
    <form class="waik" action="<%=request.getContextPath()%>/user/openAccount" method="post"
          onsubmit="return check()">
        <h2>单位开户申请表</h2>
        <span style="color: red;display: block;width: 260px;margin-left: 360px">${wrong}</span><br>
        <ul class="box">
            <li>
                <label>单位登记号</label>
                <input type="text" class="input" id="account_unit_id"
                       value="${unit.unitAccountNum}" readonly="readonly" />
            </li><br>
            <li>
                <label>单位名称</label>
                <input type="text" class="input" id="unit_name"
                       value="${unit.unitName}" readonly="readonly" />
            </li><br>
            <li>
                <label>业务种类</label>
                <input type="radio" name="accountJtype" value="住房公积金" class="dan" checked>
                    &nbsp;住房公积金&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountJtype" value="住房补贴" class="dan">
                    &nbsp;住房补贴&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountJtype" value="住房基金" class="dan">
                    &nbsp;住房基金&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountJtype" value="住房维修基金" class="dan">
                    &nbsp;住房维修基金
            </li>
            <li>
                <label>资金来源</label>
                <input type="radio" name="accountMfrom" value="单位自筹" class="dan" checked>
                    &nbsp;单位自筹&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountMfrom" value="财政拨款" class="dan">
                    &nbsp;财政拨款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountMfrom" value="财政拨款和单位自筹" class="dan">
                    &nbsp;财政拨款和单位自筹
            </li>
            <li>
                <label>开通二级辅助信息</label>
                <input type="radio" name="accountIsopen" value="是" class="dan" checked>
                    &nbsp;是&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountIsopen" value="否" class="dan">
                    &nbsp;否
            </li>
            <li>
                <label>财政拨款单位</label>
                <input type="radio" name="accountMunit" value="市财政" class="dan" checked>
                    &nbsp;市财政&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountMunit" value="区县财政" class="dan">
                    &nbsp;区县财政
            </li>
            <li>
                <label>业务经办部门</label>
                <input type="text" placeholder="请输入业务经办部门" class="input" required="required"
                       name="accountBussinessSection" id="account_bussiness_section" />
            </li><br>
            <li>
                <label>单位预算代码</label>
                <input type="text" placeholder="请输入单位预算代码" class="input" required="required"
                       value="" name="" id="unit_budget_num" />
            </li><br>
            <li>
                <label>联系电话</label>
                <input type="text" placeholder="请输入联系电话" class="input" required="required"
                       value="" name="" id="unitPhone" onchange="phone()" />
                <span class="error" id="phoneError"></span>
            </li>
            <li>
                <label>发薪日期</label>
                <input type="text" placeholder="请输入发薪日期" class="input" required="required"
                       name="accountMdate" id="account_mdate" onchange="date()" />
                <span class="error" id="dateError"></span>
            </li>
            <li>
                <label>首次汇缴月份</label>
                <input type="text" placeholder="请输入首次汇缴月份" class="input" required="required"
                       name="accountFirstmonth" id="account_firtmonth" onchange="month()">
                <span class="error" id="monthError"></span>
            </li>
            <li>
                <label>跨年清册核定月份</label>
                <input type="radio" name="accountClearMonth" value="1" class="dan" checked>
                    &nbsp;1月&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountClearMonth" value="7" class="dan">
                    &nbsp;7月
            </li>
            <li>
                <label>单位缴存比例</label>
                <select name="accountRatio" class="input" id="unit_account_ratio">
                    <option value="0.8">0.08</option>
                    <option value="0.12">0.12</option>
                </select>
            </li><br>
            <li>
                <label>个人缴存比例</label>
                <select class="input" id="user_account_ratio">
                    <option value="0.8">0.08</option>
                    <option value="0.12">0.12</option>
                </select>
            </li><br>
            <li>
                <label>每月汇缴是否需要确认人员清册</label>
                <input type="radio" name="accountIsclean" value="是" class="dan" checked>
                    &nbsp;是&nbsp;&nbsp;&nbsp;
                <input type="radio" name="accountIsclean" value="否" class="dan">
                    &nbsp;否
            </li>
            <li>
                <label>缴款方式</label>
                <input type="radio" name="account_way" value="" title="" class="dan" checked>
                    &nbsp;主动汇款&nbsp;&nbsp;&nbsp;
                <input type="radio" name="account_way" value="" title="" class="dan">
                    &nbsp;委托收款&nbsp;&nbsp;&nbsp;
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
            </li><br>
                <input type="text" name="accountUnitId" value="${unit.unitId}" style="display: none" />
        </ul>
        <div class="submit">
            <input class="login" type="submit" id="submit" value="提交" />
            <input class="reset" type="reset" value="重置">
        </div>
    </form>


</div>
</body>
</html>
