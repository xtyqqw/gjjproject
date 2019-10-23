<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2019/10/23
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位经办人授权书</title>
    <script src="/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <script src="/layui/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{background: #F2F2F2;padding: 0;margin: 0;}
        .div1{width: 100%;height: 70%;}
        .waik{background: #FFFFFF;width: 60%;height: 800px;box-shadow: 2px 2px 5px #737383;
            margin: 10px 200px;padding-bottom: 20px;}
        h2{padding: 40px;letter-spacing: 20px;margin-left: 250px;font-weight: bold;}
        .box{padding-left: 250px; }
        .box li{line-height: 44px;width: 100%;overflow: hidden;}
        /* 字体的样式 */
        .box li label {font-size: 20px;width: 200px;height: 50px;float: left;
            line-height: 50px;text-align: right;padding-right: 20px;}
        .box li span{font-size: 20px;float: left;width: 400px;height: 50px;line-height: 50px;}
        .paragraph{font-size: 17px;text-align: left;text-indent: 2em;padding: 20px 100px;}
        .date{text-align: right;padding: 0 100px;}
    </style>

</head>
<body>
<div class="div1">
    <div class="waik">
        <h2>《单位经办人授权书》</h2>
        <ul class="box box2">
            <li>
                <label for="unit_name">单位名称：</label>
                <span class="massage">智量酷</span>
            </li>
            <li>
                <label for="unit_num">组织机构代码：</label>
                <span class="massage">123456</span>
            </li>
            <li>
                <label for="user_name">经办人姓名：</label>
                <span class="massage">哈哈</span>
            </li>
            <li>
                <label for="user_cert_name">证件名称：</label>
                <span class="massage">身份证</span>
            </li>
            <li>
                <label for="user_cert_num">证件号码：</label>
                <span class="massage">410928200001010000</span>
            </li>
            <li>
                <label for="user_phonenum">手机号码：</label>
                <span class="massage">13566668888</span>
            </li>
            <li>
                <label for="user_email">电子邮箱：</label>
                <span class="massage">123456@qq.com</span>
            </li>
        </ul>
        <div>
            <p class="paragraph">
                我单位智量酷授权哈哈（证件号123456）为我单位及我单位所属职工代为办理住房公积金相关业务的经办人员，
                具体权限为登记、开户、变更单位或职工信息、汇补缴、提取、封存、转移、销户等事宜。
            </p><br />
            <p class="date">2019年10月23日</p>
        </div>

    </div>
</div>
</body>
</html>