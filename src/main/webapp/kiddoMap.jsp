<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/map.css"/>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=bIdPVG2ylm5UVvfNfkQZ7sNpeifi0Gg1"></script>

	</head>
	<body>
		<!--头部开始-->
		<header>
			<a href="index.jsp" class="left">
				<img src="${pageContext.request.contextPath}/img/logo.png"/>
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
		<div class="container">
			<div id="r-result"></div>
			<div id="l-map"></div>

		</div>
		<footer>
			<div class="contact">
				<a href="#">关于我们</a> |
				<a href="#">联系我们</a> |
				<a href="#">版权声明</a> |
				<a href="#">加入我们</a> |
				<a href="#">问题反馈</a> |
				<a href="#">友情链接</a> |
				<a href="#">网站地图</a> |
				<a href="#">视频索引</a> <br />Copyright &copy; 2017 www.kiddo.com 成师小分队 版权所有 <span>京ICP证0843234号</span>
			</div>
		</footer>
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("l-map"); // 创建Map实例
			map.centerAndZoom(new BMap.Point(104.07, 30.67), 11);
			var local = new BMap.LocalSearch(map, {
				renderOptions: {
					map: map,
					panel: "r-result"
				}
			});
			local.search("幼儿园");

			map.centerAndZoom("成都", 11);
			map.enableScrollWheelZoom(); //启用滚轮放大缩小，默认禁用
			map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用
		</script>
	</body>
</html>
