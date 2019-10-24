<%--
  Created by IntelliJ IDEA.
  User: 上官螃蟹
  Date: 2019/10/23
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../layui/css/layui.css"  media="all">
</head>
<body>
<form style="margin-top:45px" action="<%=request.getContextPath()%>/account/updateaccount" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">账户编号</label>
        <div class="layui-input-inline">
            <input style="width: 350px" type="text" name="accountId" readonly="readonly" lay-verify="required" value="${account.accountId}"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">业务种类</label>
            <div class="layui-input-inline">
                <input type="text" name="accountJtype" lay-verify="email" value="${account.accountJtype}" disabled="true" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">资金来源</label>
            <div class="layui-input-inline">
                <input type="text" name="accountMfrom" disabled="true" value="${account.accountMfrom}" lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">二级辅助信息</label>
            <div class="layui-input-inline">
                <input type="tel" name="accountIsopen" disabled="true" value="${account.accountIsopen}" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">财政拨款单位</label>
            <div class="layui-input-inline">
                <input type="text" name="accountMunit" disabled="true" value="${account.accountMunit}" lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">首次汇缴月份</label>
            <div class="layui-input-inline">
                <input type="tel" name="accountFirstmonth" disabled="true" value="${account.accountFirstmonth}" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">跨年清册月份</label>
            <div class="layui-input-inline">
                <input type="text" name="accountClearMonth" disabled="true" value="${account.accountClearMonth}"  lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label style="width: 100px" class="layui-form-label">缴存比例</label>
            <div class="layui-input-inline">
                <input type="text" name="accountRatio" disabled="true" value="${account.accountRatio}"  lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label style="width: 100px" class="layui-form-label">业务经办部门</label>
        <div class="layui-input-inline">
            <input style="width: 350px" type="text" name="accountBussinessSection"   lay-verify="required" value="${account.accountBussinessSection}"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label style="width: 100px" class="layui-form-label">发薪日期</label>
        <div class="layui-input-inline">
            <input style="width: 350px" type="text" name="accountMdate" lay-verify="required" value="${account.accountMdate}"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label style="width: 100px" class="layui-form-label">每月是否需要确认人员清册</label>
        <div class="layui-input-inline">
            <input style="width: 350px" type="text" name="accountIsclean" lay-verify="required" value="${account.accountIsclean}"  autocomplete="off" class="layui-input">
        </div>
    </div>


    <button style="margin-left: 30px;margin-top: 40px" type="submit" class="layui-btn" >保存修改</button>
</form>
</body>
</html>

