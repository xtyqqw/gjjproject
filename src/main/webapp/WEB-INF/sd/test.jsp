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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
</head>
<body>
<table class="layui-hide" id="person" lay-filter="test"></table>
<script type="text/javascript">
    layui.use(['table', 'layer', 'laydate'],
        function () {
            var $ = layui.$;
            var table = layui.table;
            var layer = layui.layer;
            table.render({
                elem: 'person'
                , url: '<%=request.getContextPath()%>/persons/personList'
                , toolbar: 'default'
                , cols: [[
                    {field: 'person_id', width: 100, title: 'id', sort: true}
                    , {field: 'person_name', width: 100, title: '姓名', sort: true}
                    , {field: 'person_cert_name', width: 100, title: '证件名称', sort: true}
                    , {field: 'person_num', width: 100, title: '证件号', sort: true}
                    , {field: 'person_unit', width: 100, title: '职业', sort: true}
                    , {field: 'person_base', width: 100, title: '缴存基数', sort: true}
                    , {field: 'person_ratio', width: 100, title: '缴存比例', sort: true}
                    , {field: 'person_amount', width: 100, title: '系统计算缴存额', sort: true}
                    , {field: 'person_register', width: 100, title: '个人登记号', sort: true}
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
            })
        })

</script>

</body>
</html>
