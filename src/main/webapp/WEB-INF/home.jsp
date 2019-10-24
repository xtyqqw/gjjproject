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
        <div class="layui-logo">北京住房公积金管理中心</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href=" ">
                    欢迎：${uname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">基本资料</a></dd>
                    <dd><a href="javascript:;">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/index.jsp">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="demoNav">
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>/login/toAuthorization?userUnitId=${user.userUnitId}" target="biao">单位网上业务授权申请</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>" target="biao">二级管理辅助信息定义</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>" target="biao">单位编辑汇缴清册</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>" target="biao">个人登记功能（无单位）</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>" target="biao">公积金制卡情况查询</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>/account/findunit?userUnitId=${user.userUnitId}" target="biao">单位登记信息变更</a>
                </li>
                <li class="layui-nav-item">
                    <a href="<%=request.getContextPath()%>/account/findaccount?id=${user.userUnitId}" target="biao">单位开户信息变更</a>
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
