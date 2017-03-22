<%@ page import="com.cs.kiddo.entity.Video" %>
<!--<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>video</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/videoPlay.css"/>
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
			<a href="index.jsp">Kido首页</a>
			<a href="kiddoCourses.jsp">Kido课堂</a>
			<a href="kiddoOrg.jsp">Kido机构</a>
			<a href="kiddoChild.jsp">Kido育儿</a>
			<a href="kiddoMap.jsp">Kido地图</a>
		</nav>
		<!--导航结束-->

    	<div class="video">
    		<%
				Video video= (Video) request.getAttribute("videoSong");
			%>
			<h1><%=video.getVideoName()%></h1>
    			<video width="800" height="500px" src="${pageContext.request.contextPath}<%=video.getVideoUrl()%>" controls="controls">
    		</video>
    	</div>
 	</body>
</html>