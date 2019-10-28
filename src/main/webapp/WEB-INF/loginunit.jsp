<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/21
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位用户登录</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <script src="/layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 30%;height: 400px;box-shadow: 2px 2px 5px #737383;
            margin: 0px auto;text-align: center;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;padding-bottom: 20px;}
        .box{padding-left: 80px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;list-style: none;}
        /* 账号 密码 验证码的样式 */
        .box li label {width: 68px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 账号 密码 验证码输入框的样式 */
        .box li input{padding: 6px 0;font-size: 16px;width: 200px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .error{clear: both;display: block;color: red;padding-left: 90px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;
        }
        .submit input{display: inline-block;width: 80px;height: 40px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px; line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;margin-left: 40px;}
        .submit a{color: #ffffff;text-decoration: none;font-size: 17px;background: #01AAED;
            padding: 10px 23px;border-radius: 5px;}
    </style>

</head>
<body>
<div class="headimg">
    <img src="../img/head.png">
</div>

<div class="div1">
    <form class="waik" action="<%=request.getContextPath()%>/user/login" method="post">
        <h2>单位登录</h2>
        <!-- 错误信息 -->
        <span class="error">${wrong}</span><br />
        <ul class="box">
            <li>
                <label>用户名：</label>
                <input type="text" placeholder="请输入用户名" name="userName" />
                <span class="error"></span>
            </li>
            <li>
                <label>密码：</label>
                <input type="password" placeholder="请输入密码" name="userPwd" />
                <span class="error"></span>
            </li>
        </ul>
        <div class="submit">
            <a href="<%=request.getContextPath()%>/user/toReg" target="_blank">注册</a>
            <input type="submit" value="登录" />
        </div>

    </form>
</div>

</body>
</html>
