<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/24
  Time: 15:11
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

    <%--<script>--%>
        <%--layui.use('element',function(){--%>
            <%--var element = layui.element;--%>
        <%--});--%>
    <%--</script>--%>


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





<div style="margin-bottom: 5px;">



</div>

<div class="layui-btn-group demoTable">
    <button  class="layui-btn" data-type="getCheckData" onclick="insterSecc()">添加</button>

</div>

<table class="layui-table" lay-data="{width: 892, height:330, url:'<%=request.getContextPath()%>/secongmsg/selectAll', page:true, id:'idTest'}" lay-filter="demo">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <th lay-data="{field:'smsgId', width:80, fixed: true}">序号</th>
        <th lay-data="{field:'smsgSectionNum', width:160}">部门编号</th>
        <th lay-data="{field:'smsgSectionName', width:160}">部门名称</th>
        <th lay-data="{field:'smsgCode', width:160}">部门代码</th>

        <th lay-data="{fixed: 'right', width:200, align:'center', toolbar: '#barDemo'}"></th>
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
                    content:$("updateSec")
                });
            }
        });



        // 添加按钮事件


        var $ = layui.$, active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.open({
                    type:1,
                    content:$("#insterSec")
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
