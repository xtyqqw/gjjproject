<%--
  Created by IntelliJ IDEA.
  User: sanliangsan
  Date: 2019/10/22
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
    <%--加上方法  绝对路径--%>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>

</head>
<body>
<table class="layui-hide" id="person" lay-filter="test"></table>
<div hidden="hidden" id="sadd"><%--添加--%>
    <form class="layui-form" action="<%=request.getContextPath()%>/persons/add" method="post">
        <input class="layui-input" style="width: 50%;" type="text" name="personName" placeholder="请输入姓名"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personCertName" placeholder="请输入证件名称"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personCertNum" placeholder="请输入证件号码"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personUnit" placeholder="请输入职业"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personBase" placeholder="请输入缴存基数"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personRatio" placeholder="请输入缴存比例"><br>
        <input class="layui-input" style="width: 50%;" type="text" name="personAmount" placeholder="请输入系统计算缴存额"><br>
        <input type="submit" value="提交">
    </form>
</div>
<div hidden="hidden" id="updates">
    <form class="layui-form" action="<%=request.getContextPath()%>/persons/update" method="post">
        <input class="layui-input" type="text" name="personId" id="personId" style="width: 50%;" placeholder="请输入id"><br>
        <input class="layui-input" type="text" name="personName" id="personName" style="width: 50%;" placeholder="请输入姓名"><br>
        <input class="layui-input" type="text" name="personCertName" id="personCertName" style="width: 50%;" placeholder="请输入姓名"><br>
        <input class="layui-input" type="text" name="personCertNum" id="personCertNum" style="width: 50%;" placeholder="请输入姓名"><br>
        <input type="submit" value="提交">
    </form>
</div>
<script >
    layui.use(['table', 'layer', 'laydate','form'],
        function () {
            var $ = layui.$;
            var table = layui.table;
            var layer = layui.layer;
            var form = layui.form;
            table.render({
                elem: '#person'
                , url: '<%=request.getContextPath()%>/persons/personList?personName=${slist.personName}&personCertNum=${slist.personCertNum}'
                , toolbar: 'default'
                , cols: [[
                    {field: 'personId', width: 100, title: 'id', sort: true}
                    , {field: 'personName', width: 100, title: '姓名', sort: true}
                    , {field: 'personCertName', width: 100, title: '证件名称', sort: true}
                    , {field: 'personCertNum', width: 100, title: '证件号', sort: true}
                    , {field: 'personUnit', width: 100, title: '职业', sort: true}
                    , {field: 'personBase', width: 100, title: '缴存基数', sort: true}
                    , {field: 'personRatio', width: 100, title: '缴存比例', sort: true}
                    , {field: 'personAmount', width: 100, title: '系统计算缴存额', sort: true}
                    , {field: 'personRegister', width: 100, title: '个人登记号', sort: true}
                    , {
                        field: 'right',
                        title: '操作',
                        width: 120,
                        align: 'center',
                        toolbar: '<div class="layui-btn-group">' +
                            '<button type="button" class="layui-btn layui-btn-xs layui-margin" lay-event="edit">编辑</button>' +
                            '<button class="layui-btn layui-btn-danger layui-btn-xs layui-margin" lay-event="del">删除</button>' +
                            '</div>'
                    }
                ]]
                ,page:true,
                limits:[2,3,4]
                ,toolbar:"<div class='layui-btn-group'>"+
                        "<button class='layui-btn' lay-event='add' >增加</button>"+
                        "<div class='layui-inline'>"+
                    "<form action='<%=request.getContextPath()%>/persons/dim' method='post'>"+
                        "<input class='layui-input' name='personName' id='personName' autocomplete='off' placeholder='请输入姓名'>"+
                        "<input class='layui-input' name='personCertNum' id='personCertNum' autocomplete='off' placeholder='请输入证件号码'>"+
                        "<input type='submit' value='确认'/>"+
                    "</form>"+
                        "</div>"+
                "</div>"

            });
            table.on('toolbar(test)',function (obj) {/*添加*/
                var data=obj.data;
                if(obj.event==='add'){
                    layer.open({
                        type:1
                        ,title:'添加'
                        ,btn:true
                        ,area:'420px'
                        ,content:$('#sadd')
                    });
                }
            });
            table.on('tool(test)',function (obj) {/*删除*/
                var data=obj.data;
                if(obj.event==='del'){
                    layer.confirm("确认删除？",function (index) {
                        obj.del();
                        $.ajax({
                            type:"POST",
                            url:"<%=request.getContextPath()%>/persons/delete?personId="+data.personId,
                            success:function (msg) {
                                layer.msg(msg);
                            }
                        });
                        layer.close(index);
                    });
                }else if(obj.event==='edit'){/*修改*/
                    $("#personId").val(data.personId);
                    $("#personName").val(data.personName);
                    $("#personCertName").val(data.personCertName);
                    $("#personCertNum").val(data.personCertNum);
                    layer.open({
                        type:1
                        ,title:'修改'
                        ,btn:true
                        ,area:'420px'
                        ,content:$('#updates')
                    });
                }

            })


        })

</script>

</body>
</html>












