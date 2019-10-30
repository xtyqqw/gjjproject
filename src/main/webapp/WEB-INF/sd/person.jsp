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

    <style type="text/css">
        .box{padding: 40px 80px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;list-style: none;}
        /* 输入框前面字体的样式 */
        .box li label {width: 120px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 输入框的样式 */
        .box li input{padding: 6px 0;font-size: 16px;width: 200px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        /*下拉框的样式*/
        .xlInput{width: 200px;height: 40px;border: 1px solid #dddddd;border-radius: 5px;}
        /*提交按钮的样式*/
        .submit input{display: inline-block;width: 80px;height: 40px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px; line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;margin-left: 200px;}
    </style>

</head>
<body style="padding: 0 10px;width: 95%;height: 600px;">
<script type="text/javascript">
    function idCard() {
        var regPhone=/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        var idCard=document.getElementById("certNum1").value;
        var bool=regPhone.test(idCard);
        if(bool==true){
            document.getElementById("idCardError1").innerHTML="";
            return true
        }else {
            document.getElementById("idCardError1").innerHTML="请输入正确身份证号";
            document.getElementById("idCardError1").style.color="red";
            return false;
        }
    }
    function idCards() {
        var regPhone=/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        var idCards=document.getElementById("personCertNumm").value;
        var bool=regPhone.test(idCards);
        if(bool==true){
            document.getElementById("idCardsError").innerHTML="";
            return true
        }else {
            document.getElementById("idCardsError").innerHTML="请输入正确身份证号";
            document.getElementById("idCardsError").style.color="red";
            return false;
        }
    }
    function check() {
        var check = idCard() && idCards();
        return check;
    }
</script>
<span style="color: red">${msg}</span>
<table class="layui-hide" id="person" lay-filter="test"></table>
<%--<span style="color: red">${msg}</span>--%>
<%--添加的弹出框--%>
<div hidden="hidden" id="sadd">
    <form action="<%=request.getContextPath()%>/persons/add" method="post" onsubmit="check()">
        <ul class="box box2">
            <li>
                <label>姓名：</label>
                <input type="text" placeholder="请输入姓名" name="personName" required="required"/><br><br>
            </li>
            <li>
                <label>证件名称：</label>
                <select name="personCertName" class="xlInput">
                    <option value="身份证">身份证</option>
                    <option value="军官证">军官证</option>
                    <option value="护照">护照</option>
                </select><br><br>
            </li>
            <li>
                <label>证件号码：</label>
                <input type="text" placeholder="请输入证件号码" name="personCertNum" id="certNum1"
                       required="required" onchange="idCard()"/>
                <span class="error" id="idCardError1"></span>
                <br><br>
            </li>
            <li>
                <label>职业：</label>
                <%--<input type="text" placeholder="请输入职业" name="personUnit" required="required"/><br><br>--%>
                <select name="personUnit" class="xlInput">
                    <option value="个人">个人</option>
                </select><br>
            </li>
            <li>
                <label>缴存基数：</label>
                <%--<input type="text" placeholder="请输入缴存基数" name="personBase" /><br><br>--%>
                <select name="personBase" class="xlInput">
                    <option value="0.8">0.8</option>
                    <option value="0.9">0.9</option>
                    <option value="0.10">0.10</option>
                </select><br><br>
            </li>
            <li>
                <label>缴存比例：</label>
                <%--<input type="text" placeholder="请输入缴存比例" name="personRatio" /><br><br>--%>
                <select name="personRatio" class="xlInput">
                    <option value="0.8">0.8</option>
                    <option value="0.9">0.9</option>
                    <option value="0.10">0.10</option>
                </select><br><br>
            </li>
            <li>
                <label>系统计算缴存额：</label>
                <%--<input type="text" placeholder="请输入系统计算缴存额" name="personAmount" /><br>--%>
                <select name="personAmount" class="xlInput">
                    <option value="0.10">0.10</option>
                    <option value="0.11">0.11</option>
                    <option value="0.12">0.12</option>
                </select><br><br>
            </li>
        </ul>
        <div class="submit">
            <input type="submit" value="添加" />
        </div>
    </form>
</div>
<%--修改的弹出框--%>
<div hidden="hidden" id="updates">
    <form action="<%=request.getContextPath()%>/persons/update" method="post">
        <ul class="box box2">
            <li hidden="hidden">
                <label>id：</label>
                <input type="text" id="personId" name="personId" /><br><br>
            </li>
            <li>
                <label>姓名：</label>
                <input type="text" id="personNamee" name="personName" required="required"/><br><br>
            </li>
            <li>
                <label>证件名称：</label>
                <select name="personCertName" class="xlInput" id="personCertName">
                    <option value="身份证">身份证</option>
                    <option value="军官证">军官证</option>
                    <option value="护照">护照</option>
                </select><br><br>
            </li>
            <li>
                <label>证件号码：</label>
                <input type="text" id="personCertNumm" value="" name="personCertNum"
                        onchange="idCards()"/>
                <span class="error" id="idCardsError"></span><br><br>
            </li>
            <li>
                <label>职业：</label>
                <%--<input type="text" id="personUnit" name="personUnit" required="required"/><br><br>--%>
                <select name="personUnit" class="xlInput">
                    <option value="个人">个人</option>
                </select><br>
            </li>
            <li>
                <label>缴存基数：</label>
                <%--<input type="text" id="personBase" name="personBase" /><br><br>--%>
                <select name="personBase" class="xlInput">
                    <option value="0.8">0.8</option>
                    <option value="0.9">0.9</option>
                    <option value="0.10">0.10</option>
                </select><br><br>
            </li>
            <li>
                <label>缴存比例：</label>
                <%--<input type="text" id="personRatio" name="personRatio" /><br><br>--%>
                <select name="personRatio" class="xlInput">
                    <option value="0.8">0.8</option>
                    <option value="0.9">0.9</option>
                    <option value="0.10">0.10</option>
                </select><br><br>
            </li>
            <li>
                <label>系统计算缴存额：</label>
                <%--<input type="text" id="personAmount" name="personAmount" /><br>--%>
                <select name="personAmount" class="xlInput">
                    <option value="0.10">0.10</option>
                    <option value="0.11">0.11</option>
                    <option value="0.12">0.12</option>
                </select><br><br>
            </li>
        </ul>
        <div class="submit">
            <input type="submit" value="保存" />
        </div>
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
                    {field: 'personId', width: 80,align:'center', title: 'id', sort: true}
                    , {field: 'personName', width: 100,align:'center', title: '姓名'}
                    , {field: 'personCertName', width: 120,align:'center', title: '证件名称'}
                    , {field: 'personCertNum', width: 200,align:'center', title: '证件号'}
                    , {field: 'personUnit', width: 100,align:'center', title: '职业'}
                    , {field: 'personBase', width: 120,align:'center', title: '缴存基数'}
                    , {field: 'personRatio', width: 120,align:'center', title: '缴存比例'}
                    , {field: 'personAmount', width: 170,align:'center', title: '系统计算缴存额'}
                    , {field: 'personRegister', width: 240,align:'center', title: '个人登记号'}
                    , {
                        field: 'right',
                        title: '操作',
                        width: 140,
                        align: 'center',
                        toolbar: '<div class="layui-btn-group">' +
                            '<button type="button" class="layui-btn layui-btn-xs layui-margin" lay-event="edit">编辑</button>' +
                            '<button class="layui-btn layui-btn-danger layui-btn-xs layui-margin" lay-event="del">删除</button>' +
                            '</div>'
                    }
                ]]
                ,page:true,
                limits:[10,20,30]
                ,toolbar:"<div class='layui-btn-group'>"+
                        "<button class='layui-btn' lay-event='add' >增加</button>"+
                        "<div class='layui-inline'>"+
                    "<form action='<%=request.getContextPath()%>/persons/dim' method='post'>"+
                        "<input style='float:left;width: 200px;height: 40px;border: none;margin-left:20px;padding-left:10px;border: 1px solid #dddddd;' name='personName' id='personName' placeholder='请输入姓名'>"+
                        "<input style='float:left;width: 200px;height: 40px;border: none;margin-left:15px;padding-left:10px;border: 1px solid #dddddd;' name='personCertNum' id='personCertNum' placeholder='请输入证件号码'>"+
                        "<input style='float:left;width: 70px;height: 38px;border: none;margin-left:15px;background-color: #01AAED;color: #FFFFFF;' type='submit' value='确认'/>"+
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
                        ,area:['50%','80%']
                        ,content:$('#sadd')
                    });
                }
            });
            table.on('tool(test)',function (obj) {
                var data=obj.data;
                if(obj.event==='del'){/*删除*/
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
                    $("#personNamee").val(data.personName);
                    $("#personCertName").val(data.personCertName);
                    $("#personCertNumm").val(data.personCertNum);
                    $("#personUnit").val(data.personUnit);
                    $("#personBase").val(data.personBase);
                    $("#personRatio").val(data.personRatio);
                    $("#personAmount").val(data.personAmount);
                    layer.open({
                        type:1
                        ,title:'修改'
                        ,btn:true
                        ,area:['50%','80%']
                        ,content:$('#updates')
                    });
                }

            })


        })

</script>

</body>
</html>












