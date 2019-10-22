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
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>

</head>
<body>
<table class="layui-hide" id="person" lay-filter="test"></table>
<script >
    layui.use(['table', 'layer', 'laydate'],
        function () {
            var $ = layui.$;
            var table = layui.table;
            var layer = layui.layer;
            table.render({
                elem: '#person'
                , url: '<%=request.getContextPath()%>/persons/personList'
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
                            '<button >编辑</button>' +
                            '<button >删除</button>' +
                            '</div>'
                    }
                ]]
                ,page:true,
                limits:[2,2,3]
                ,toolbar:"<div class='layui-btn-group'>"+
                        "<button class='layui-btn' lay-event='add' >增加</button>"+
                        "<button class='layui-btn' layui-event='up' >搜索</button>"+
                        "<from action='<%=request.getContextPath()%>/persons/add' method='post'>"+
                        "<div>"
            })
        })

</script>

</body>
</html>
