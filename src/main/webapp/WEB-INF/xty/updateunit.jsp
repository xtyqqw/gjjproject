<%--
  Created by IntelliJ IDEA.
  User: 上官螃蟹
  Date: 2019/10/22
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../layui/css/layui.css"  media="all">
</head>
<body>

    <form style="margin-top:45px" action="<%=request.getContextPath()%>/account/updateunit" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">单位编号</label>
            <div class="layui-input-inline">
                <input style="width: 350px" type="text" name="username" disabled="true" lay-verify="required" value="${unit.unitId}"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">单位名</label>
                <div class="layui-input-inline">
                    <input type="tel" name="unitName" value="${unit.unitName}" disabled="true" lay-verify="required|phone"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label style="width: 100px" class="layui-form-label">组织机构代码</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitNum" lay-verify="email" value="${unit.unitNum}" disabled="true" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label style="width: 100px" class="layui-form-label">单位性质代码</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitType" disabled="true" value="${unit.unitType}" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">单位证件名</label>
                <div class="layui-input-inline">
                    <input type="tel" name="unitCertName" disabled="true" value="${unit.unitCertName}" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label style="width: 100px" class="layui-form-label">单位证件号</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitCertNum" disabled="true" value="${unit.unitCertNum}" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
<%--            <div class="layui-inline">--%>
<%--                <label style="width: 100px" class="layui-form-label">单位性质代码</label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">法人</label>
                <div class="layui-input-inline">
                    <input type="tel" name="unitLegal" disabled="true" value="${unit.unitLegal}" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label style="width: 100px" class="layui-form-label">法人证件名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitLegalCertName" disabled="true" value="${unit.unitLegalCertName}"  lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label style="width: 100px" class="layui-form-label">法人证件号码</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitLegalCertNum" disabled="true" value="${unit.unitLegalCertNum}"  lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 100px" class="layui-form-label">单位成立时间</label>
            <div class="layui-input-inline">
                <input style="width: 350px" type="text" disabled="true"   lay-verify="required" value="${unit.unitCreatetime}"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 100px" class="layui-form-label">单位注册地址</label>
            <div class="layui-input-inline">
                <input style="width: 350px" type="text" name="unitLoginAdd" lay-verify="required" value="${unit.unitLoginAdd}"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 100px" class="layui-form-label">单位办公地址</label>
            <div class="layui-input-inline">
                <input style="width: 350px" type="text" name="unitWorkAdd" lay-verify="required" value="${unit.unitWorkAdd}"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label style="width: 100px" class="layui-form-label">上级主管单位</label>
            <div class="layui-input-inline">
                <input style="width: 350px" type="text" name="superUnitName"  lay-verify="required" value="${unit.superUnitName}"  autocomplete="off" class="layui-input">
            </div>
        </div>

        <button style="margin-left: 30px;margin-top: 40px" type="submit" class="layui-btn" >保存修改</button>
    </form>
</body>
</html>
