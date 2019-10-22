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
    <title>单位登录</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>
    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div1{width: 100%;height: 70%;}
        .form1{background: #FFFFFF;width: 400px;height: 350px;margin: 0 auto;margin-top: 50px;
            box-shadow: 2px 2px 5px #737383;}
        .p1{color: #555555;font-size: 25px;font-weight: bold;
            padding: 20px 150px 0px 150px;}
        .userpwd{padding: 10px 80px;}
        .input{width: 150px;height: 40px;}
        .btn a{height: 40px;background-color: #01AAED;padding: 1px 20px;margin-left: 75px;
            display: inline-block;line-height: 35px;}
        a{color: #FFFFFF;text-decoration: none;font-size: 17px;}
        .login{margin-left: 50px;background-color: #01AAED;width: 100px;height: 40px;
            color: #FFFFFF;border: 0px none;font-size: 17px;}
    </style>

</head>
<body>
    <div class="headimg">
        <img src="../img/head.png">
    </div>

    <div class="div1">
        <form class="form1" action="<%=request.getContextPath()%>/login/toHome" method="post">
            <p class="p1">单&nbsp;位&nbsp;登&nbsp;录</p>
            <%--错误信息--%>
            <span style="color: red;padding: 0px 70px;"><%--${wrong}--%></span>
            <div class="userpwd">
                用户名：<input class="input" type="text" placeholder="请输入用户名" /><br /><br />
                密&nbsp;&nbsp;&nbsp;码：<input class="input" type="text" placeholder="请输入密码" />
                <br /><br /><br />
            </div>
            <div class="btn">
                <a href="<%=request.getContextPath()%>/login/toLogin" id="aa" target="_blank">注&nbsp;&nbsp;&nbsp;&nbsp;册</a>
                <input class="login" type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" />
            </div>

        </form>
    </div>

</body>
</html>
