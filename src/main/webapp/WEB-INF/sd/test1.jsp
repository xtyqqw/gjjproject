<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/10/24
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已制卡</title>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css" media="all">
    <script src="/layui/layui.js" type="text/javascript"></script>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">--%>
</head>
<body>
<table class="layui-hide" id="test" ></table>
<script>

        layui.use('table', function () {
            var table = layui.table;

            table.render({
                elem: '#test'
                , code: 0
                , url: '<%=request.getContextPath()%>/test/stest'
                , cellMinWidth: 80
                , cols: [[
                    {field: 'id', width: 100, title: 'id', sort: true}
                    , {field: 'name', width: 120, title: '制卡情况', sort: true}
                ]]
                ,page:false
            });
        });


</script>
</body>
</html>
