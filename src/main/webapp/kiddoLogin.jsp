<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
</head>

<body>
<div class="login">
    <img src="${pageContext.request.contextPath}/img/admin.png"/>
    <form action="${pageContext.request.contextPath}/Kiddo/User/login.do" method="post" class="login_form">
        <label for="">用户名：</label><br/>
        <input type="text" name="account" class="input" placeholder="请输入用户名"/><br/>

        <label for="">密码：</label><br/>
        <input type="password" name="password" class="input" placeholder="请输入密码"/><br/>

        <input type="checkbox"/>记住我
        <a class="regist_a" href="${pageContext.request.contextPath}/kiddoRegister.jsp">注册 <span>(没有账号)</span></a><br/>
        <input type="submit" name="submit" class="btn l_btn" value="登录"/>
        <input type="reset" name="reset" class="btn d_btn" value="取消"/>
    </form>
</div>
</body>
</html>