<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/22
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京住房公积金管理中心首页</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>
    <style type="text/css">
        /* a标签的样式 */
        .menu {color: #0C0C0C;padding: 10px 10px;font-size: 16px;
            vertical-align: middle;}
        /* ul样式 */
        .layui-nav {background-color: #DDDDDD !important;width: 198px;height: 100%;
            border: 1px solid #dddddd;vertical-align: middle;}
        .layui-nav-item a{color: #3c3c3c !important; border: 1px solid #dddddd;
            background-color: #DDDDDD;}
        a:hover{background-color: #8D8D8D !important;}
        input{background-color: #23262E;color: #FFFFFF;border: none;margin: 10px;}
    </style>
    <script>
        //JavaScript代码区域
        layui.use('element', function() {
            var element = layui.element;

        });
    </script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" style="color: #FFFFFF;">北京住房公积金管理中心</div>
        <ul class="layui-nav layui-layout-right" style="background-color: #23262E !important;border: none;">
            <li class="layui-nav-item" style="float: right;">
                <input value="欢迎：xx" type="button" />
            </li>
            <li class="layui-nav-item" style="float: right;">
                <form action="../index.html">
                    <input style="margin-top: 20px" type="submit" value="退出" />
                </form>
            </li>
        </ul>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll" style="background-color: #FFFFFF;">
            <ul class="layui-nav layui-nav-tree" lay-filter="demoNav">
                <li class="layui-nav-item" style="background-color: #FFFFFF;">
                    <a class="menu" href="<%=request.getContextPath()%>/login/toAuthorization?userUnitId=${user.userUnitId}" target="biao">单位网上业务授权申请</a>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="" target="biao">二级管理辅助信息定义</a>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="" target="biao">单位编辑汇缴清册</a>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="<%=request.getContextPath()%>/persons/totest" target="biao">个人登记功能（无单位）</a>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="javascript:;" target="biao">公积金制卡情况查询</a>
                    <dl class="layui-nav-child">
                        <dd><a style="background-color: #aaaaaa;" href="<%=request.getContextPath()%>/stat/tostat" target="biao">已制卡</a></dd>
                        <dd><a style="background-color: #aaaaaa;" href="<%=request.getContextPath()%>/stats/tostats" target="biao">未制卡</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="<%=request.getContextPath()%>/account/findunit?userUnitId=${user.userUnitId}" target="biao">单位登记信息变更</a>
                </li>
                <li class="layui-nav-item">
                    <a class="menu" href="<%=request.getContextPath()%>/account/findaccount?id=${user.userUnitId}" target="biao">单位开户信息变更</a>
                </li>
            </ul>
        </div>
    </div>

    <div>
        <iframe name="biao" style="width: 100%; height: 90%;border: 0 none;vertical-align: middle;
			            margin-left: 200px" frameborder="1"></iframe>
    </div>

</div>
</body>
</html>
