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
    <style type="text/css">
        /*  添加提交表单的样式 */
        #insertSec {
            float: right;

        }
        .inster input{
            margin-top: 1vw;
            height: 1.5vw;
            font-size: 1.5vw;
        }
        .inster button{
            margin-top: 1vw;
            float: right;
            font-size: 1vw;

        }

    </style>
</head>
<body>
<!--  添加二级管理表单 -->
<div class="inster">
    <form id="insterSec" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/insertSec" method="post" >
        序号:<input id="smsgId1" type="text" name="smsgId" value=""><br>
        部门编号：<input id="smsgSectionNum1" type="text" name="smsgSectionNum" value=""><br>
        部门名称：<input id="smsgSctionName1" type="text" name="smsgSectionName" value=""><br>
        部门代码：<input id="smsgCode1" type="text" name="smsgCode" value=""><br>
        <button type="submit">添加</button>
    </form>
</div>



<!-- 修改二级管理表单 -->
<div class="update">
    <form id="updateSec" style="display: none;"  action="<%=request.getContextPath()%>/secongmsg/updateSec" method="post">
        序号:<input id="smsgId" type="text" name="smsgId" value=""><br>
        部门编号：<input id="smsgSectionNum" type="text" name="smsgSectionNum" value=""><br>
        部门名称：<input id="smsgSctionName" type="text" name="smsgSectionName" value=""><br>
        部门代码：<input id="smsgCode" type="text" name="smsgCode" value=""><br>
        <button type="submit">修改</button>
    </form>
</div>





<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url:'<%=request.getContextPath()%>/secongmsg/selectAll'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'smsgId', title:'ID', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计'}
                ,{field:'smsgSectionNum', title:'部门编号', width:120, edit: 'text'}
                ,{field:'smsgSectionName', title:'部门名称', width:120, edit: 'text'}
                ,{field:'smsgCode', title:'部门代码', width:80, sort: true, totalRow: true}

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
                        content:$("#insterSec")
                    });
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选')
                    break;
            };
        });
    });
</script>

</body>
</html>
