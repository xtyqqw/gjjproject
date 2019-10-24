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
    <script src="/layui/layui.js" type="text/javascript"></script>

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
        .box li input{padding: 6px 0;font-size: 16px;width: 296px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .user_cert_name{width: 300px;height: 40px;border-radius: 5px;border: 1px solid #dddddd;}
        .error{clear: both;display: block;color: red;padding-left: 90px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;
        }
        .errorInput{border: 1px solid red !important;}
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;margin-left: 400px;}

    </style>

    <!-- 验证输入框的信息 -->
    <script type="text/javascript">
        //注册验证的js
        $(function(){
            //姓名错误
            $(".box2 #user_name").blur(function(){
                var nameVal = $(this).val();
                if(nameVal == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("姓名不能为空");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //验证密码
            $(".box2 #pwd1").blur(function(){
                pwd1Reg = /^[A-z0-9]{6}$/;
                var pwd1Val = $(this).val();
                if(pwd1Val == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("密码不能为空");
                }else if(!pwd1Reg.test(pwd1Val)){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("请输入六位以上带有字母和数字的密码");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //确认密码
            $(".box2 #pwd2").blur(function(){
                pwd2Reg = /^[A-z0-9]{6}$/;
                var pwd1Val = $(".box2 #pwd1").val();
                var pwd2Val = $(this).val();
                if(pwd1Val == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("密码不能为空");
                }else if(!pwd2Reg.test(pwd2Val)){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("请输入正确的密码");
                }else if(pwd1Val != pwd2Val){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("两次输入的密码不一致");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //证件号码
            $(".box2 #user_cert_num").blur(function(){
                var zjidVal = $(this).val();
                if(zjidVal == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("证件号码不能为空");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //单位名称
            $(".box2 #unit_name").blur(function(){
                var unameVal = $(this).val();
                if(unameVal == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("单位名称不能为空");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //验证手机号码,通过正则表达式
            $(".box2 #user_phonenum").blur(function(){
                phoneReg = /^0{0,1}(13[0-9]|15[7-9]|153|156|18[7-9])[0-9]{8}$/;
                var phoneVal = $(this).val();
                if(phoneVal == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("手机号码不能为空");
                }else if(!phoneReg.test(phoneVal)){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("请输入正确的手机号码");
                }else{
                    $(this).addClass("correctInput");
                    $(this).next().empty();
                }
            });
            //验证邮箱
            $(".box2 #user_email").blur(function(){
                emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                var emailVal = $(this).val();
                if(emailVal == ""){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("邮箱不能为空");
                }else if(!emailReg.test(emailVal)){
                    $(this).addClass("errorInput");
                    $(this).next().css("display","block").html("请输入正确的邮箱");
                }else{
                    $(this).addClass("errorInput");
                    $(this).next().empty();
                }
            });

        });

    </script>

</head>
<body>

<div class="headimg">
    <img src="../img/head.png">
</div>

<div class="div1">
    <form action="<%=request.getContextPath()%>/user/register" class="waik" method="post">
        <h2>单位用户注册</h2>
        <span style="color: red;padding: 0px 70px;">${wrong}</span>
        <ul class="box box2">
            <li>
                <label for="user_name">姓名</label>
                <input type="text" placeholder="请输入姓名" name="userName" class="user_name" id="user_name" />
                <span class="error"></span>
            </li>
            <li>
                <label for="pwd1">密码</label>
                <input type="password" placeholder="请输入密码" name="userPwd" class="pwd1" id="pwd1" />
                <span class="error"></span>
            </li>
            <li>
                <label for="pwd2">确认密码</label>
                <input type="password" placeholder="请确认密码" class="pwd2" id="pwd2" />
                <span class="error"></span>
            </li>
            <li>
                <label for="user_cert_name">证件名称</label>
                <select name="userCertName" class="user_cert_name" id="user_cert_name">
                    <option value="身份证">身份证</option>
                    <option value="军官证">军官证</option>
                    <option value="护照">护照</option>
                </select>
            </li><br />
            <li>
                <label for="user_cert_num">证件号码</label>
                <input type="text" placeholder="请确认证件号码" name="userCertNum" class="user_cert_num" id="user_cert_num" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_name">单位名称</label>
                <input type="text" placeholder="请输入单位名称" name="unitName" class="unit_name" id="unit_name" />
                <span class="error"></span>
            </li>
            <li>
                <label for="user_phonenum">手机号码</label>
                <input type="text" placeholder="请输入手机号码" name="userPhonenum" class="user_phonenum" id="user_phonenum" />
                <span class="error"></span>
            </li>
            <li>
                <label for="user_email">电子邮箱</label>
                <input type="user_email" placeholder="请输入电子邮箱" name="userEmail" class="user_email" id="user_email" />
                <span class="error"></span>
            </li>
        </ul>
        <div class="submit">
            <input type="submit" value="立即注册" />
        </div>
    </form>
</div>

</body>
</html>
