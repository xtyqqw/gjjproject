<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/25
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="styleSheet"  href="../../layui/css/layui.css" media="all"/>
    <script src="../../layui/layui.js" charset="utf-8"></script>
    <script
            src="../../layui/layui.js"
            charset="utf-8"></script>
    <style type="text/css">
        /*添加样式属性*/
        .insterRemit input{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1.5vw;
        }
        .insterRemit button{
            margin-top: 1vw;
            float: right;
            font-size: 1vw;

        }
    </style>
</head>
<body>

<!-- 添加信息表单 -->
<div class="insterRemit">
    <form  id="insterRemit" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/insertRemit" method="post">

        职工编号：<input type="text" name="remitPersonNum" id="remitPersonNum1"><br>
        姓名：    <input type="text" name="name" id="name1"><br>
        证件名称：<input type="text" name="remitCertName" id="remitCertName1"><br>
        国别：    <input type="text" name="remitCountry" id="remitCountry1"><br>
        证件号码：<input type="text" name="remitCertNum" id="remitCertNum1"><br>
        缴存基数：<input type="text" name="remitMoney" id="remitMoney1"><br>
        单位月缴存额：<input type="text" name="unitMonthlyDeposit" id="unitMonthlyDeposit1"><br>
        个人月缴存额：<input type="text" name="personMonthlyDeposit" id="personMonthlyDeposit1"><br>
        月缴存额合计：<input type="text" name="monthlyDepositTotal" id="monthlyDepositTotal1"><br>
        制卡状态：<input type="text" name="remitCardStatus" id="remitCardStatus1"><br>

        二级管理辅助信息：<label><input type="checkbox" name="remitSmsgId" value="0">已开通</label>
        <label><input type="checkbox" name="remitSmsgId" value="1">未开通</label><br>

        <button type="submit">添加</button>
    </form>
</div>


<!-- 修改信息表 -->
<div class="updateRemit">
    <form  id="updateRemit" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/updateRemit" method="post">
        <input type="text" name="remitId" id="remitId" style="display: none">
        职工编号：<input type="text" name="remitPersonNum" id="remitPersonNum"><br>
        姓名：    <input type="text" name="name" id="name"><br>
        证件名称：<input type="text" name="remitCertName" id="remitCertName"><br>
        国别：    <input type="text" name="remitCountry" id="remitCountry"><br>
        证件号码：<input type="text" name="remitCertNum" id="remitCertNum"><br>
        缴存基数：<input type="text" name="remitMoney" id="remitMoney"><br>
        单位月缴存额：<input type="text" name="unitMonthlyDeposit" id="unitMonthlyDeposit"><br>
        个人月缴存额：<input type="text" name="personMonthlyDeposit" id="personMonthlyDeposit"><br>
        月缴存额合计：<input type="text" name="monthlyDepositTotal" id="monthlyDepositTotal"><br>
        制卡状态：<input type="text" name="remitCardStatus" id="remitCardStatus"><br>
        二级管理辅助信息：<label><input type="checkbox" name="remitSmsgId" value="0">已开通</label>
        <label><input type="checkbox" name="remitSmsgId" value="1">未开通</label><br>

        <button type="submit">修改</button>
    </form>
</div>





<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">添加</button>

    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>

</script>








<script>
    layui.use(['table','layer', 'laydate','form'], function(){
        var table = layui.table;
        var $=layui.$;
        table.render({
            elem: '#test'
            ,url:'<%=request.getContextPath()%>/secongmsg/selectRemitAll'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'remitId', title:'ID', width:120, edit: 'text'}
                ,{field:'remitPersonNum', title:'职工编号', width:120, edit: 'text'}
                ,{field:'name', title:'姓名', width:120, edit: 'text'}
                ,{field:'remitCertName', title:'证件名称', width:80, sort: true, totalRow: true}
                ,{field:'remitCountry', title:'国别', width:80, sort: true, totalRow: true}
                ,{field:'remitCertNum', title:'证件号码', width:80, sort: true, totalRow: true}
                ,{field:'remitMoney', title:'缴存基数', width:80, sort: true, totalRow: true}
                ,{field:'unitMonthlyDeposit', title:'单位月缴存额', width:80, sort: true, totalRow: true}
                ,{field:'personMonthlyDeposit', title:'个人月缴存额', width:80, sort: true, totalRow: true}
                ,{field:'monthlyDepositTotal', title:'月缴存额合计', width:80, sort: true, totalRow: true}
                ,{field:'remitSmsgId', title:'二级管理辅助信息', width:80, sort: true, totalRow: true}

                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
            ]]
            ,page: true
        });

        //工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.open({
                        type:1,
                        content:$("#insterRemit")
                    });
                    break;
                case 'edit':
                    var data = checkStatus.data;
                    layer.open({
                        type:1,
                        content:$("#updateRemit")
                    });
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选')
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                $("#remitId").val(data.remitId);
                $("#remitPersonNum").val(data.remitPersonNum);
                $("#name").val(data.name);
                $("#remitCertName").val(data.remitCertName);
                $("#remitCountry").val(data.remitCountry);
                $("#remitCertNum").val(data.remitCertNum);
                $("#remitMoney").val(data.remitMoney);
                $("#unitMonthlyDeposit").val(data.unitMonthlyDeposit);
                $("#personMonthlyDeposit").val(data.personMonthlyDeposit);
                $("#monthlyDepositTotal").val(data.unitMonthlyDeposit);
                $("#remitCardStatus").val(data.remitCardStatus);
                // $("#remitCardStatus").val(data.remitCardStatus);




                layer.open({
                    type:1,
                    content:$("#updateRemit")
                });
            }
        });



    });
</script>


</body>
</html>

