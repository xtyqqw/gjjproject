<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/10/24
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>未制卡</title>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css" media="all">
    <script src="/layui/layui.js" type="text/javascript"></script>

</head>
<body>
<table class="layui-hide" id="test" ></table>
<script>

    layui.use('table', function () {
        var table = layui.table;

        table.render({
            elem: '#test'
            , code: 0
            , url: '<%=request.getContextPath()%>/stats/statss'
            , cellMinWidth: 80
            , cols: [[
                {field: 'remitPersonNum', width: 100, title: 'id', sort: true}
                , {field: 'name', width: 120, title: '姓名', sort: true}
                , {field: 'remitCertName', width: 120, title: '证件名称', sort: true}
                , {field: 'remitCertNum', width: 120, title: '证件号码', sort: true}
                ,{field: 'remitSmsgId', width: 120, title: '部门', sort: true}
                , {field: 'remitCardStatus', width: 120, title: '制卡情况', sort: true}

            ]]
            ,page:false
        });
    });


</script>
</body>
</html>