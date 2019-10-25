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

</head>
<body style="padding: 0 10px;width: 95%;height: 600px;">
<table class="layui-hide" id="test"></table>
<script>

        layui.use('table', function () {
            var table = layui.table;

            table.render({
                elem: '#test'
                , code: 0
                , url: '<%=request.getContextPath()%>/stat/stats'
                , cellMinWidth: 80
                , cols: [[
                    {type:'numbers', width:30}
                    , {field: 'remitPersonNum', width: 120,align:'center', title: '个人编号', sort: true}
                    , {field: 'name', width: 120,align:'center', title: '姓名'}
                    , {field: 'remitCertName', width: 120,align:'center', title: '证件名称'}
                    , {field: 'remitCertNum', width: 120,align:'center', title: '证件号码'}
                    , {field: 'remitSmsgId', width: 120,align:'center', title: '所属部门'}
                    , {field: 'remitCardStatus', width: 120,align:'center', title: '制卡情况'}

                ]]
                ,page:false
                ,toolbar:"<h2>制卡（已制卡）人员清册</h2><div>单位登记号：${stat.remitUnitAccountNum}</div>"
            });
        });


</script>
</body>
</html>
