<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/22
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位网上业务授权申请</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <script src="/layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 60%;height: 800px;box-shadow: 2px 2px 5px #737383;
            margin: 10px 200px;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;margin-left: 200px;}
        .box{padding-left: 250px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;}
        /* 字体的样式 */
        .box li label {width: 100px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 输入框的样式 */
        .box li input{padding: 6px 0;font-size: 16px;width: 296px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .xlInput{width: 300px;height: 40px;border-radius: 5px;border: 1px solid #dddddd;}
        .error{clear: both;display: block;color: red;padding-left: 120px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;}
        .danwei{clear: both;display: none;padding-left: 120px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;}
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;margin-left: 450px;}
    </style>

    <!-- 验证输入框的信息 -->
    <script type="text/javascript">
        //注册验证的js
        $(function(){
            //单位名称框
            $(".box2 #unit_name").blur(function(){
                var nameVal = $(this).val();
                if(nameVal == ""){
                    $(this).next().css("display","block").html("单位名称不能为空");
                }else{
                    $(this).next().empty();
                }
            });
            //组织代码机构框
            $(".box2 #unit_num").blur(function(){
                var nameVal = $(this).val();
                if(nameVal == ""){
                    $(this).next().css("display","block").html("组织代码机构不能为空");
                }else{
                    $(this).next().empty();
                }
            });
            //经办人姓名框
            $(".box2 #user_name").blur(function(){
                var nameVal = $(this).val();
                if(nameVal == ""){
                    $(this).next().css("display","block").html("经办人姓名不能为空");
                }else{
                    $(this).next().empty();
                }
            });
            //证件号码
            $(".box2 #user_cert_num").blur(function(){
                var zjidVal = $(this).val();
                if(zjidVal == ""){
                    $(this).next().css("display","block").html("证件号码不能为空");
                }else{
                    $(this).next().empty();
                }
            });
            //验证手机号码
            $(".box2 #user_phonenum").blur(function(){
                phoneReg = /^0{0,1}(13[0-9]|15[7-9]|153|156|18[7-9])[0-9]{8}$/;
                var phoneVal = $(this).val();
                if(phoneVal == ""){
                    $(this).next().css("display","block").html("手机号码不能为空");
                }else if(!phoneReg.test(phoneVal)){
                    $(this).next().css("display","block").html("请输入正确的手机号码");
                }else{
                    $(this).next().empty();
                }
            });
            //验证邮箱
            $(".box2 #user_email").blur(function(){
                emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                var emailVal = $(this).val();
                if(emailVal == ""){
                    $(this).next().css("display","block").html("邮箱不能为空");
                }else if(!emailReg.test(emailVal)){
                    $(this).next().css("display","block").html("请输入正确的邮箱");
                }else{
                    $(this).next().empty();
                }
            });

        });

    </script>

</head>
<body>
<div class="div1">
    <form class="waik" action="<%=request.getContextPath()%>/login/toAuthsecces" method="post">
        <h2>《单位网上业务授权申请书》</h2><br />

        <ul class="box">
            <li>
                <label for="unit_name">单位名称</label>
                <input type="text" id="unit_name" disabled="true"
                       value="${unit.unitName}" name="" />
                <span class="danwei">单位id${userUnitId}</span>
            </li>
            <li>
                <label for="unit_num">组织机构代码</label>
                <input type="text" id="unit_num" disabled="true"
                       value="${unit.unitNum}" name="" />
                <span class="error"></span>
            </li>
            <li>
                <label for="user_name">经办人姓名</label>
                <input type="text" placeholder="请输入经办人姓名" id="user_name"  required="required"
                       value="" name="" />
                <span class="error">${wrong}</span>
            </li>
            <li>
                <label for="user_cert_name">证件名称</label>
                <select name="user_cert_name" id="user_cert_name" class="xlInput">
                    <option value="身份证">身份证</option>
                    <option value="军官证">军官证</option>
                    <option value="护照">护照</option>
                </select>
            </li><br />
            <li>
                <label for="user_cert_num">证件号码</label>
                <input type="text" placeholder="请输入证件号码" id="user_cert_num" required="required"
                       value="" name="" />
                <span class="error"></span>
            </li>
            <li>
                <label for="user_phonenum">手机号码</label>
                <input type="text" placeholder="请输入手机号码" id="user_phonenum" required="required"
                       value="" name=""/>
                <span class="error"></span>
            </li>
            <li>
                <label for="user_email">电子邮箱</label>
                <input type="email" placeholder="请输入电子邮箱" id="user_email" required="required"
                       value="" name=""/>
                <span class="error"></span>
            </li>
        </ul>
        <div class="submit">
            <input type="submit" value="提交" />
        </div>

    </form>
</div>
</body>
</html>
