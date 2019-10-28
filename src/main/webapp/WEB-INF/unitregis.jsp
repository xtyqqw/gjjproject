<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位登记</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <script src="/layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .headimg{width: 100%;height: 150px;}
        .headimg img{width: 100%;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 60%;height: 1300px;box-shadow: 2px 2px 5px #737383;
            margin: 0px auto;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;margin-left: 350px;}
        .box{padding-left: 200px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;}
        /* 字体样式 */
        .box li label {width: 150px;height: 50px;float: left;line-height: 50px;text-align: right;
            padding-right: 20px;}
        /* 输入框的样式 */
        .box li .input{padding: 6px 0;font-size: 16px;width: 296px;height: 40px;line-height: 28px;
            border: 1px solid #dddddd;text-indent: 0.5em;float: left;border-radius: 5px;}
        .unit_type{width: 300px;height: 40px;border-radius: 5px;border: 1px solid #dddddd;}
        .error{clear: both;display: block;color: red;padding-left: 90px;padding-bottom: 5px;
            height: 20px;float: left;font-size: 12px;line-height: 20px;
        }
        .submit input{display: inline-block;width: 100px;height: 50px;background-color: #01AAED;
            color: #FFFFFF;font-size: 17px;line-height: 40px;outline: none;border: none;
            border-radius: 5px;cursor: pointer;}
        .submit .login{margin-left: 300px;}
        .submit .reset{margin-left: 100px;position: absolute;background-color: #dddddd;
            border: 1px solid #dddddd;color: #000000;}
    </style>

    <script>
        layui.use(['laydate'], function(){
            var laydate = layui.laydate;

            //日期
            laydate.render({
                elem: '#date'
            });
        });
    </script>
</head>
<body>
<div class="headimg">
    <img src="../img/head.png">
</div>
<div class="div1">
    <form action="<%=request.getContextPath()%>/user/unitReg" class="waik" method="post">
        <h2>单位登记表</h2>
        <span style="color: red;display: block;width: 200px;margin-left: 400px">${wrong}</span><br>
        <ul class="box">
            <li>
                <label>单位编号</label>
                <input type="text" placeholder="请输入单位编号" class="input" id="unit_id"
                       value="${unit.unitId}" name="unitId" />
                <span class="error"></span>
            </li>
            <li>
                <label>单位名称</label>
                <input type="text" placeholder="请输入单位名称" class="input" id="unit_name"
                       value="${unit.unitName}" name="unitName"/>
                <span class="error"></span>
            </li>
            <li>
                <label>组织机构代码</label>
                <input type="text" placeholder="请输入组织代码机构" class="input" id="unit_num"
                       required="required" name="unitNum"/>
                <span class="error"></span>
            </li>
            <li>
                <label>单位性质代码</label>
                <select name="unitType" class="unit_type" id="unit_type">
                    <option value="111">111</option>
                    <option value="222">222</option>
                    <option value="333">333</option>
                </select>
            </li><br />
            <li>
                <label>单位证件名称</label>
                <select name="unitCertName" class="input" id="unit_cert_name">
                    <option value="营业执照">营业执照</option>
                    <option value="税务登记证">税务登记证</option>
                    <option value="组织机构代码证">组织机构代码证</option>
                </select>
                <span class="error"></span>
            </li>
            <li>
                <label>单位证件号</label>
                <input type="text" placeholder="请输入单位证件号" class="input" required="required"
                       id="unit_cert_num" name="unitCertNum" />
                <span class="error"></span>
            </li>
            <li>
                <label>法人</label>
                <input type="text" placeholder="请输入法人" class="input" id="unit_legal"
                       required="required" name="unitLegal"/>
                <span class="error"></span>
            </li>
            <li>
                <label>法人证件名称</label>
                <select name="unitLegalCertName" class="input" id="unit_legal_cert_name">
                    <option value="身份证">身份证</option>
                    <option value="军人证">军人证</option>
                    <option value="护照">护照</option>
                </select>
                <span class="error"></span>
            </li>
            <li>
                <label>法人证件号码</label>
                <input type="text" placeholder="请输入法人证件号码" class="input" required="required"
                       id="unit_legal_cert_num" name="unitLegalCertNum" />
                <span class="error"></span>
            </li>
            <li>
                <label>单位成立时间</label>
                <div class="layui-input-inline">
                    <input type="text" name="unitCreatetime" id="date" lay-verify="date"
                           required="required" placeholder="yyyy-MM-dd" class="input">
                </div>
            </li><br />
            <li>
                <label>单位注册地址</label>
                <input type="text" placeholder="请输入单位注册地址" class="input" required="required"
                       id="unit_login_add" name="unitLoginAdd" />
                <span class="error"></span>
            </li>
            <li>
                <label>单位办公地址</label>
                <input type="text" placeholder="请输入单位办公地址" class="input" required="required"
                       id="unit_work_add" name="unitWorkAdd" />
                <span class="error"></span>
            </li>
            <li>
                <label>上级主管单位</label>
                <input type="text" placeholder="请输入上级主管单位" class="input" required="required"
                       id="super_unit_name" name="superUnitName" />
                <span class="error"></span>
            </li>
            <li>
                <label>是否具有法人资格</label>
                <input type="radio" name="unitCondition" value="是" title="是" class="dan">&nbsp;是&nbsp;&nbsp;&nbsp;
                <input type="radio" name="unitCondition" value="否" title="否" class="dan">&nbsp;否
            </li><br />
            <li>
                <label>单位登记经办人编号</label>
                <input type="text" class="input" id="unit_user_id" readonly="readonly"
                       value="${unit.unitUserId}" name="unit_user_id" />
                <span class="error"></span>
            </li>
        </ul>
        <div class="submit">
            <input class="login" type="submit" id="submit" value="保存" />
            <input class="reset" type="reset" value="重置">
        </div>
    </form>
</div>

</body>
</html>
