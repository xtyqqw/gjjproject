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
            border-radius: 5px;cursor: pointer;margin-left: 400px;}

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
    <form action="<%=request.getContextPath()%>/login/toOpenacc" class="waik" method="post">
        <h2>单位登记表</h2>
        <ul class="box box2">
            <li>
                <label for="unit_id">单位编号---</label>
                <input type="text" placeholder="请输入单位编号" class="input" id="unit_id"
                       value="" name="" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_name">单位名称---</label>
                <input type="text" placeholder="请输入单位名称" class="input" id="unit_name"
                       value="" name=""/>
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_num">组织代码机构</label>
                <input type="text" placeholder="请输入组织代码机构" class="input" id="unit_num"
                       value="" name=""/>
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_type">单位性质代码</label>
                <select name="unit_type" class="unit_type" id="unit_type">
                    <option value="111">111</option>
                    <option value="222">222</option>
                    <option value="333">333</option>
                </select>
            </li><br />
            <li>
                <label for="unit_cert_name">单位证件名</label>
                <input type="text" placeholder="身份证" class="input" id="unit_cert_name"
                       value="" name="unit_cert_name"/>
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_cert_num">单位证件号</label>
                <input type="text" placeholder="请输入单位证件号" class="input"
                       id="unit_cert_num"  value="" name="unit_cert_num" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_legal">法人</label>
                <input type="text" placeholder="请输入法人" class="input" id="unit_legal"
                       value="" name="unit_legal"/>
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_legal_cert_name">法人证件名称</label>
                <input type="text" placeholder="请输入法人证件名称" class="input"
                       id="unit_legal_cert_name" value="" name="unit_legal_cert_name" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_legal_cert_num">法人证件号码</label>
                <input type="email" placeholder="请输入法人证件号码" class="input"
                       id="unit_legal_cert_num" value="" name="unit_legal_cert_num" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_createtime">单位成立时间</label>
                <div class="layui-input-inline">
                    <input type="text" name="unit_createtime" id="date" lay-verify="date"
                           placeholder="yyyy-MM-dd" class="input" value="">
                </div>
            </li><br />
            <li>
                <label for="unit_login_add">单位注册地址</label>
                <input type="text" placeholder="请输入单位注册地址" class="input"
                       id="unit_login_add" value="" name="unit_login_add" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_work_add">单位办公地址</label>
                <input type="text" placeholder="请输入单位办公地址" class="input"
                       id="unit_work_add" value="" name="unit_work_add" />
                <span class="error"></span>
            </li>
            <li>
                <label for="super_unit_name">上级主管单位</label>
                <input type="text" placeholder="请输入上级主管单位" class="input"
                       id="super_unit_name" value="" name="super_unit_name" />
                <span class="error"></span>
            </li>
            <li>
                <label for="unit_condition">是否具有法人资格</label>
                <input type="radio" name="sex" value="是" title="是" class="dan">&nbsp;&nbsp;是&nbsp;&nbsp;
                <input type="radio" name="sex" value="否" title="否" class="dan">&nbsp;&nbsp;否
            </li><br />
            <li>
                <label for="unit_user_id">单位登记经办人编号---</label>
                <input type="text" class="input" id="unit_user_id"
                       value="" name="unit_user_id" />
                <span class="error"></span>
            </li>
        </ul>
        <div class="submit">
            <input type="submit" value="保存" />
        </div>
    </form>
</div>

</body>
</html>