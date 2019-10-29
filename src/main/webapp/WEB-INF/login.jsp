<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/22
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位用户注册</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <script src="/layui/layui.js" type="text/javascript"></script>
    <script src="/layui/lay/modules/form.js"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 60%;height: 800px;box-shadow: 2px 2px 5px #737383;
            margin: 0px auto;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;margin-left: 350px;}
        .box{padding-left: 250px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;}
        /* 字体样式 */
        .box li label {width: 68px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 输入框的样式 */
        .box li input{padding: 6px 0;font-size: 16px;width: 300px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .user_cert_name{width: 300px;height: 40px;border-radius: 5px;border: 1px solid #dddddd;}
        .error{clear: both;display: block;color: red;padding-left: 90px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;}
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;}
        .submit .login{margin-left: 300px;}
        .submit .reset{margin-left: 100px;position: absolute;background-color: #dddddd;
            border: 1px solid #dddddd;color: #000000;}
    </style>

    <!-- 验证输入框的信息 -->
    <script type="text/javascript">
        //密码
        function checkpwd1() {
            var check = false;
            //获取密码输入框输入的值
            var password = document.getElementById("pwd1").value;
            if (password.length == 6) {
                document.getElementById("checktext2").innerHTML = "";
                check = true;
            } else {
                document.getElementById("checktext2").innerHTML = "密码必须是六位";
                check = false;
            }
            return check;
        }
        //确认密码
        function checkpwd2() {
            var check = false;
            var pwd1 = document.getElementById("pwd1").value;
            var pwd2 = document.getElementById("pwd2").value;
            if (pwd1 != pwd2) {
                document.getElementById("checktext3").innerHTML = "两次输入密码不一致";
                check = false;
            } else {
                document.getElementById("checktext3").innerHTML = "";
                check = true;
            }
            return check;
        }
        //验证手机号
        function phone() {
            var regPhone = /^1([356789]\d|5[0-35-9]|7[3678])\d{8}$/;
            var phone = document.getElementById("user_phonenum").value;
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
        //验证邮箱
        function email() {
            var id = /^[A-Za-z0-9-._]+@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,6})$/;
            var txtemail= document.getElementById("user_email").value;
            var bool = id.test(txtemail);
            if(bool == true){
                document.getElementById("emailError").innerHTML="";
                return true;
            }else{
                document.getElementById("emailError").innerHTML="格式不对如jack@163.com";
                document.getElementById("emailError").style.color="red";
                return false;
            }
        }
        function check(){
            var check = checkpwd1() && checkpwd2() && email() && phone();
            return check;
        }
    </script>

</head>
<body>

<div class="headimg">
    <img src="../img/head.png">
</div>

<div class="div1">
    <form action="<%=request.getContextPath()%>/user/register" class="waik" method="post"
          onsubmit="return check()">
        <h2>单位用户注册</h2>
        <span style="color: red;padding: 0px 70px;">${wrong}</span>
        <ul class="box">
            <li>
                <label>姓名</label>
                <input type="text" placeholder="请输入姓名" required="required"
                       name="userName" id="user_name" />
                <span class="error" id="error"></span>
            </li>
            <li>
                <label>密码</label>
                <input type="password" placeholder="请输入密码" required="required"
                       name="userPwd" id="pwd1" onchange="checkpwd1()" />
                <span class="error" id="checktext2"></span>
            </li>
            <li>
                <label>确认密码</label>
                <input type="password" placeholder="请确认密码" required="required"
                       id="pwd2" onchange="checkpwd2()" />
                <span class="error" id="checktext3"></span>
            </li>
            <li>
                <label>证件名称</label>
                <select name="userCertName" class="user_cert_name" id="user_cert_name">
                    <option value="身份证">身份证</option>
                    <option value="军官证">军官证</option>
                    <option value="护照">护照</option>
                </select>
            </li><br />
            <li>
                <label>证件号码</label>
                <input type="text" placeholder="请确认证件号码" required="required"
                       name="userCertNum" id="user_cert_num" />
                <span class="error"></span>
            </li>
            <li>
                <label>单位名称</label>
                <input type="text" placeholder="请输入单位名称" required="required"
                       name="unitName" id="unit_name" />
                <span class="error"></span>
            </li>
            <li>
                <label>手机号码</label>
                <input type="text" placeholder="请输入手机号码" required="required"
                       name="userPhonenum" id="user_phonenum" onchange="phone()" />
                <span class="error" id="phoneError"></span>
            </li>
            <li>
                <label>电子邮箱</label>
                <input type="user_email" placeholder="请输入电子邮箱" required="required"
                       name="userEmail" id="user_email" onchange="email()" />
                <span class="error" id="emailError"></span>
            </li>
        </ul>
        <div class="submit">
            <input class="login" type="submit" id="submit" value="立即注册" />
            <input class="reset" type="reset" value="重置">
        </div>
    </form>
</div>

</body>
</html>
