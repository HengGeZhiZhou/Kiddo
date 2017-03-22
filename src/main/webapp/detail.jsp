<%@ page import="com.cs.kiddo.entity.AbArticles" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查看全文</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/detail.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
    </head>
    <body>
    	<!--头部开始-->
		<header>
			<a href="index.html" class="left">
				<img src="${pageContext.request.contextPath}/img/logo.png" />
				<div class="head_p right">一切为了孩子，为了一切孩子——KIDDO</div>
			</a>
		</header>
		<!--头部结束-->

		<!--导航开始-->
		<nav>
			<a href="${pageContext.request.contextPath}/Kiddo/News/getNews.do">Kido首页</a>
			<a href="${pageContext.request.contextPath}/kiddoCourses.jsp">Kido课堂</a>
			<a href="${pageContext.request.contextPath}/kiddoOrg.jsp">Kido机构</a>
			<a href="${pageContext.request.contextPath}/kiddoChild.jsp">Kido育儿</a>
			<a href="${pageContext.request.contextPath}/kiddoMap.jsp">Kido地图</a>
		</nav>
		<!--导航结束-->
    	<div class="content">
			<% AbArticles abArticles= (AbArticles) request.getAttribute("news"); %>
			<h2><%=abArticles.getTitle()%></h2>
    		<div class="msg">
				作者：<%=abArticles.getAuthor()%>　来源：未知　发布时间：<%=abArticles.getCreated()%></div>
    		<p><%=abArticles.getContents()%></p>
    	</div>
 	</body>
</html>