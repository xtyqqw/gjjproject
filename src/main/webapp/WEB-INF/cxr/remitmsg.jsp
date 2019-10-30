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

        #remitCertName1{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1vw;
        }
        #remitCertName{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1vw;
        }
        #remitSmsgId1{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1vw;
        }
        .updateRemit input{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1vw;
        }
        .updateRemit button{
            margin-top: 1vw;
            float: right;
            font-size: 1vw;

        }
        #remitSmsgId{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1vw;
        }
        .msg{
            font-size: 1.5vw;
            color: red;

            text-align: center;
        }
        h2{
            text-align: center;
        }

    </style>
</head>
<body>
<p>${msg}</p>
<h2>汇缴清册管理</h2>


<!-- 添加信息表单 -->
<div class="insterRemit">
    <form  id="insterRemit" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/insertRemit" method="post">

        职工编号：<input type="text" name="remitPersonNum" id="remitPersonNum1" style="margin-left: 2vw" required="required"><br>
        姓名：    <input type="text" name="name" id="name1" style="margin-left: 3.8vw" required="required"><br>
        证件名称：<label style="margin-left: 2vw"><select name="remitCertName" id="remitCertName1" required="required">
                        <option value="身份证">身份证</option>
                        <option value="军官证">军官证</option>
                        <option value="护照">护照</option>
                        </select>
                </label><br>
        国别：    <input type="text" name="remitCountry" id="remitCountry1" style="margin-left: 3.8vw" required="required"><br>
        证件号码：<input type="text" name="remitCertNum" id="remitCertNum1" style="margin-left: 2vw" required="required"><br>
        缴存基数：<input type="text" name="remitMoney" id="remitMoney1" style="margin-left: 2vw" required="required"><br>
        单位月缴存额：<input type="text" name="unitMonthlyDeposit" id="unitMonthlyDeposit1" readonly="readonly"><br>
        个人月缴存额：<input type="text" name="personMonthlyDeposit" id="personMonthlyDeposit1" readonly="readonly"><br>
        月缴存额合计：<input type="text" name="monthlyDepositTotal" id="monthlyDepositTotal1" readonly="readonly"><br>
        <%--制卡状态：<input type="text" name="remitCardStatus" id="remitCardStatus1"><br>--%>

        二级管理辅助信息：<label style="margin-left:2vw"><select name="remitSmsgId" id="remitSmsgId1">
                                <option value="已开通">已开通</option>
                                <option value="未开通">未开通</option>
                                </select>
                        </label><br>

                    <button type="submit" class="layui-btn">添加</button>
    </form>
</div>


<!-- 修改信息表 -->
<div class="updateRemit">
    <form  id="updateRemit" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/updateRemit" method="post">
        <input type="text" name="remitId" id="remitId" style="display: none">
        职工编号：<input type="text" name="remitPersonNum" id="remitPersonNum" readonly="readonly" style="margin-left: 2vw"><br>
        姓名：    <input type="text" name="name" id="name" style="margin-left: 3.8vw"><br>
        证件名称：<label style="margin-left: 2vw"><select name="remitCertName" id="remitCertName">
                        <option value="身份证">身份证</option>
                        <option value="军官证">军官证</option>
                        <option value="护照">护照</option>
                        </select>
                </label><br>
        国别：    <input type="text" name="remitCountry" id="remitCountry" style="margin-left: 3.8vw"><br>
        证件号码：<input type="text" name="remitCertNum" id="remitCertNum" style="margin-left: 2vw"><br>
        缴存基数：<input type="text" name="remitMoney" id="remitMoney" style="margin-left:2vw"><br>
        单位月缴存额：<input type="text" name="unitMonthlyDeposit" id="unitMonthlyDeposit" readonly="readonly" ><br>
        个人月缴存额：<input type="text" name="personMonthlyDeposit" id="personMonthlyDeposit" readonly="readonly" ><br>
        月缴存额合计：<input type="text" name="monthlyDepositTotal" id="monthlyDepositTotal" readonly="readonly" ><br>
       <%-- 制卡状态：<input type="text" name="remitCardStatus" id="remitCardStatus"><br>--%>
        二级管理辅助信息：<label style="margin-left: 6vw"><select name="remitSmsgId" id="remitSmsgId">
                                     <option value="已开通">已开通</option>
                                     <option value="未开通">未开通</option>
                                 </select>
                         </label><br>

        <button type="submit" class="layui-btn" data-method="xiugai">修改</button>
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
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

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
                // ,{field:'remitId', title:'序号', width:80, edit: 'text'}
                ,{field:'remitPersonNum', title:'职工编号', width:120}
                ,{field:'name', title:'姓名', width:80}
                ,{field:'remitCertName', title:'证件名称', width:120, sort: true}
                ,{field:'remitCountry', title:'国别', width:80, sort: true}
                ,{field:'remitCertNum', title:'证件号码', width:120, sort: true}
                ,{field:'remitMoney', title:'缴存基数', width:120, sort: true}
                ,{field:'unitMonthlyDeposit', title:'单位月缴存额', width:160, sort: true}
                ,{field:'personMonthlyDeposit', title:'个人月缴存额', width:160, sort: true}
                ,{field:'monthlyDepositTotal', title:'月缴存额合计', width:160, sort: true}
                ,{field:'remitSmsgId', title:'二级管理辅助信息', width:160, sort: true}

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
                        content:$("#updateRemit"),
                        success:function () {
                            
                        }

                    });
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            //删除方法
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    var remitId=data.remitId;
                    $.ajax({
                        type:"post",
                        url:"<%=request.getContextPath()%>/secongmsg/deleteRemit?remitId="+remitId,
                        contentType:'application/json;charset=utf-8',
                        data:'{remitId:'+remitId+'}',
                        success:function (str) {
                            layer.msg(str);
                        }
                    });
                    obj.del();
                    layer.close(index);
                });
                //修改方法
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
                //$("#remitCardStatus").val(data.remitCardStatus);
                $("#remitCardStatus").val(data.remitCardStatus);
                layer.open({
                    type:1,

                    content:$("#updateRemit"),

                });

    }

        });




    });
</script>


</body>
</html>

