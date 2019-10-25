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

    <style type="text/css">
        body{background: #FFFFFF;padding: 0;margin: 0;}
        h2{padding: 20px;letter-spacing: 20px;margin-left: 500px;}
    </style>

</head>
<body style="padding: 0 10px;width: 95%;height: 600px;">
<h2>单位制卡人员清册</h2>
<table class="layui-hide" id="test"></table>
<script>

    layui.use('table', function () {
        var table = layui.table;

        table.render({
            elem: '#test'
            , code: 0
            , url: '<%=request.getContextPath()%>/stats/statss'
            , cellMinWidth: 80
            , cols: [[
                {type:'numbers', width:30}
                , {field: 'remitPersonNum', width: 120,align:'center', title: 'id', sort: true}
                , {field: 'name', width: 120,align:'center', title: '姓名'}
                , {field: 'remitCertName', width: 120,align:'center', title: '证件名称'}
                , {field: 'remitCertNum', width: 120,align:'center', title: '证件号码'}
                , {field: 'remitSmsgId', width: 120,align:'center', title: '部门'}
                , {field: 'remitCardStatus', width: 120,align:'center', title: '制卡情况'}

            ]]
            ,page:false
            ,toolbar:"<div class='layui-btn-group'>"+
                "<div class='layui-inline'>"+
                "<form action='<%=request.getContextPath()%>' method='post'>"+
                "<input style='float:left;width: 200px;height: 40px;border: none;margin-left:20px;padding-left:10px;border: 1px solid #dddddd;' name='personName' id='personName' placeholder='请输入单位登记号'>"+
                "<input style='float:left;width: 200px;height: 40px;border: none;margin-left:15px;padding-left:10px;border: 1px solid #dddddd;' name='personCertNum' id='personCertNum' placeholder='请输入证件号码'>"+
                "<input style='float:left;width: 70px;height: 38px;border: none;margin-left:15px;background-color: #01AAED;color: #FFFFFF;' type='submit' value='搜索'/>"+
                "</form>"+
                "</div>"+
                "</div>"
        });
    });


</script>
</body>
</html>