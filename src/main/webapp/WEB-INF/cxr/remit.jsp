<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/24
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="styleSheet"  href="../../layui/css/layui.css" media="all"/>
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
        序号：<input type="text" name="remitId" id="remitId1"><br>
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
    <form  id="updateRemit" style="display: none; margin-top: 1vw;" action="" method="post">
        序号：<input type="text" name="remitId" id="remitId"><br>
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





<div style="margin-bottom: 5px;">
</div>

<div class="layui-btn-group demoTable">
    <button class="layui-btn" data-type="getCheckData" onclick="insterR()">添加</button>

</div>

<table class="layui-table" lay-data="{width: 100%, height:330, url:'<%=request.getContextPath()%>/secongmsg/selectRemitAll', page:true, id:'idTest'}" lay-filter="demo">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <th lay-data="{field:'remitId', width:80,  fixed: true}">序号</th>
        <th lay-data="{field:'remitPersonNum', width:100}">职工编号</th>
        <th lay-data="{field:'name', width:50}">姓名</th>
        <th lay-data="{field:'remitCertName', width:100}">证件名称</th>
        <th lay-data="{field:'remitCountry', width:80}">国别</th>
        <th lay-data="{field:'remitCertNum', width:200}">证件号码</th>

        <th lay-data="{field:'remitMoney', width:100}">缴存基数</th>
        <th lay-data="{field:'unitMonthlyDeposit', width:120}">单位月缴存额</th>
        <th lay-data="{field:'personMonthlyDeposit', width:120}">个人月缴存额</th>
        <th lay-data="{field:'monthlyDepositTotal', width:120}">月缴存额合计</th>
        <th lay-data="{field:'remitSmsgId', width:140}">二级管理辅助信息</th>


        <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
    </thead>
</table>

<script type="text/html" id="barDemo">

    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<script
        src="../../layui/layui.js"
        charset="utf-8"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });
        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.open({
                    type:1,
                    content:$("#updateRemit")
                });
            }
        });

        var $ = layui.$, active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.open({
                    type:1,
                    content:$("#insterRemit")
                });
            }


        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>


</body>
</html>
