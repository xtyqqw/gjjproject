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
</head>
<body>
    <form action="<%=request.getContextPath()%>/account/updateunit" method="post">
        <input readonly="readonly" value="${unit.unitId}" name="unitId">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input readonly="readonly" value="${unit.unitId}">
        <input  value="${unit.unitWorkAdd}" name="unitWorkAdd">
        <button>保存修改</button>
    </form>
</body>
</html>
