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
            font-size: 1vw;
        }
        .inster button{
            margin-top: 1vw;
            float: right;
            font-size: 1vw;

        }
        .update button{
            margin-top: 1vw;
            float: right;
            font-size: 1vw;
            float: right;

        }
        .update input{
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

<p class="msg">${msg}</p>
<h2>二级管理辅助信息</h2>

<!--  添加二级管理表单 -->
<div class="inster">
    <form id="insterSec" style="display: none; margin-top: 1vw;" action="<%=request.getContextPath()%>/secongmsg/insertSec" method="post" >
        <input id="smsgId1" type="text" name="smsgId" value="" style="display: none;" ><br>
        部门编号：<input id="smsgSectionNum1" type="text" name="smsgSectionNum" value="" required="required"><br>
        部门名称：<input id="smsgSctionName1" type="text" name="smsgSectionName" value="" required="required"><br>
        部门代码：<input id="smsgCode1" type="text" name="smsgCode" value="" required="required"><br>
        <button type="submit" class="layui-btn">添加</button>
    </form>
</div>



<!-- 修改二级管理表单 -->
<div class="update">
    <form id="updateSec" style="display: none;"  action="<%=request.getContextPath()%>/secongmsg/updateSec" method="post">
        <input id="smsgId" readonly="readonly" type="text" name="smsgId" value="" style="display: none" ><br>
        部门编号：<input id="smsgSectionNum" type="text" name="smsgSectionNum" value=""><br>
        部门名称：<input id="smsgSectionName" type="text" name="smsgSectionName" value=""><br>
        部门代码：<input id="smsgCode" type="text" name="smsgCode" value=""><br>
        <button type="submit" class="layui-btn">修改</button>
    </form>
</div>





<div style="margin-bottom: 5px;">



</div>

<div class="layui-btn-group demoTable">
    <button  class="layui-btn" data-type="getCheckData" onclick="insterSec()">添加</button>

</div>


<div class="biaoge">
<table class="layui-table"
       lay-data="{

                    url:'<%=request.getContextPath()%>/secongmsg/selectAll',
                     page:true, id:'idTest'}"
                        lay-filter="demo">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <%--<th lay-data="{field:'smsgId', width:80, fixed: true}">序号</th>--%>
        <th lay-data="{field:'smsgSectionNum', width:160}">部门编号</th>
        <th lay-data="{field:'smsgSectionName', width:160}">部门名称</th>
        <th lay-data="{field:'smsgCode', width:160}">部门代码</th>

        <th lay-data="{fixed: 'right', width:200, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
    </thead>
</table>
</div>

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
            } else if(obj.event === 'del'){//删除方法
                layer.confirm('真的删除行么', function(index){
                    var smsgId=data.smsgId;
                    $.ajax({
                        type:"post",
                        url:"<%=request.getContextPath()%>/secongmsg/deleteSec?smsgId="+smsgId,
                        contentType:'application/json;charset=utf-8',
                        data:'{smsgId:'+smsgId+'}',
                        success:function (str) {
                            layer.msg(str);
                        }
                    });
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){//修改方法
                $("#smsgId").val(data.smsgId);
                $("#smsgSectionNum").val(data.smsgSectionNum);
                $("#smsgSectionName").val(data.smsgSectionName);
                $("#smsgCode").val(data.smsgCode);

                layer.open({
                    type:1,
                    content:$("#updateSec")
                });
            }
        });



        // 添加按钮事件


        var $ = layui.$, active = {
            getCheckData: function(){ //添加新增方法
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
<script>

</script>
</body>
</html>
