<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html lang="zh">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>regist</title>
		<link rel="stylesheet" type="text/css" href="css/login.css">
	</head>

	<body>
		<div class="regist">
			<!--<img src="img/admin.png"/>-->
			<h1>欢迎注册KIDDO</h1>
			<form action="${pageContext.request.contextPath}/Kiddo/User/register.do" method="post" class="regist_form">
				<label for="">用户名：</label><br />
				<input type="text" name="account" class="input" id="uesername" placeholder="请输入用户名"/><br />
				
				<label for="">密码：</label><br />
				<input type="password" name="password" class="input" id="password" placeholder="请输入密码"/><br />
				<label for="">确认密码：</label><br />
				<input type="text" name="password2" class="input" id="password_s" placeholder="请确认密码"/><br />
				
				<input type="checkbox" />记住我  <a class="login_a" href="kiddoLogin.jsp">登录 <span>(已有账号)</span></a><br />
				<input type="submit" name="submit" class="btn l_btn" value="注册" />
				<input type="reset" name="reset" class="btn d_btn" value="取消"/>
			</form>
		</div>
	</body>
</html>