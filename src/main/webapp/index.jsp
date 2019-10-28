<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/21
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京住房公积金网</title>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
    <link rel="shortcut icon" href="img/favicon.ico" />
    <script src="layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div2{width: 100%;height: 70%;}
        .div3{background: #FFFFFF;width: 400px;height: 350px;margin: 0 auto;margin-top: 50px;
            box-shadow: 2px 2px 5px #737383;}
        .ddi{padding: 60px 80px;}
        .div31{background: url(img/user.png) no-repeat;width: 230px;height: 115px;}
        .div31,.div32 a{font-size: 16px;font-family: "ms sans serif";text-align: center;
            line-height: 42px;display: block;padding-top: 30px;}
        a{color: #FFFFFF;text-decoration: none;}
        a:hover{color: #FFFFFF;}
        .div32{background: url(img/unit.png) no-repeat;width: 230px;height: 115px;}
    </style>

    <%--个人公积金弹窗--%>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#persons,#person").click(function(){
                alert("温馨提示：个人住房公积金请到各网点办理！");
            })
        });
    </script>

</head>
<body>

    <div class="headimg">
        <img src="img/head.png">
    </div>

    <div class="div2">
        <div class="div3">
            <div class="ddi">
                <div class="div31" id="persons">
                    <a id="person" href="#">个人网上业务平台</a>
                </div>
                <div class="div32">
                    <a class="aa" href="<%=request.getContextPath()%>/user/toLogin" target="_blank">
                        单位网上业务平台
                    </a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
