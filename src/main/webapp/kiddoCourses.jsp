<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/kidCourse.css"/>
	</head>
	<body>
		<!--头部开始-->
		<header>
			<a href="${pageContext.request.contextPath}/index.jsp" class="left">
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
		
		<!--主体内容开始-->
		<div class="main">
			<div class="left section">
				<div class="section_t">
					<div class="hot left">
						<h2>早期教育知识热点推荐</h2>
						<ul>
							<li>
								<div class="hot_img left">
									<img src="${pageContext.request.contextPath}/img/course/l1.jpg"/>
								</div>
								<div class="hot_text right">
									<h3><a href="">五个小妙招让宝宝养成懂礼貌</a></h3>
									<p>人与人之间的相处最重要的是互相尊重，
									只有礼貌待人，他人才会礼貌待我们。
									所以，家长要从小培养宝宝懂礼貌……<a href="">[查看全文]</a></p>
								</div>
							</li>
							<li>
								<div class="hot_img left">
									<img src="${pageContext.request.contextPath}/img/course/l2.jpg"/>
								</div>
								<div class="hot_text right">
									<h3><a href="">五个小妙招让宝宝养成懂礼貌</a></h3>
									<p>人与人之间的相处最重要的是互相尊重，
									只有礼貌待人，他人才会礼貌待我们。
									所以，家长要从小培养宝宝懂礼貌……<a href="">[查看全文]</a></p>
								</div>
							</li>
							<li>
								<div class="hot_img left">
									<img src="${pageContext.request.contextPath}/img/course/l3.jpg"/>
								</div>
								<div class="hot_text right">
									<h3><a href="">五个小妙招让宝宝养成懂礼貌</a></h3>
									<p>人与人之间的相处最重要的是互相尊重，
									只有礼貌待人，他人才会礼貌待我们。
									所以，家长要从小培养宝宝懂礼貌……<a href="">[查看全文]</a></p>
								</div>
							</li>
						</ul>
					</div>
					<div class="img right">
						<img src="${pageContext.request.contextPath}/img/course/baby1.jpg"/>
						<img src="${pageContext.request.contextPath}/img/course/baby2.jpg"/>
						<img src="${pageContext.request.contextPath}/img/course/baby3.jpg"/>
					</div>
					<div class="hot_bimg left">
						<a href=""><img src="${pageContext.request.contextPath}/img/course/img.jpg"/></a>
					</div>
				</div>
				<div class="section_b">
					<h2>宝贝成长</h2>
					<div class="baby_img left">
						<div class="baby_gallery">
							<h4>宝贝成长图库</h4>
							<br />
							<div class="baby_i">
								<img src="${pageContext.request.contextPath}/img/course/eat.jpg" alt="吃饭" />
								<p>第一次学会自己吃饭</p>
							</div>
							<div class="baby_i">
								<img src="${pageContext.request.contextPath}/img/course/speack.jpg" alt="喊妈妈" />
								<p>第一次喊妈妈</p>
							</div>
							<div class="baby_i">
								<img src="${pageContext.request.contextPath}/img/course/swim.jpg" alt="游泳" />
								<p>第一游泳</p>
							</div>
							<div class="baby_i">
								<img src="${pageContext.request.contextPath}/img/course/walk.jpg" alt="走路" />
								<p>第一次学走路</p>
							</div>
						</div>
						<div>
							<div></div>
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
					<div class="baby_suggest right">           
						<h4>宝贝成长秘籍</h4>
						<ul>
							<b>·</b><a href=""><li>常用尿不湿孩子爱尿床</li></a>
							<b>·</b><a href=""><li>怎样给孩子补钙</li></a>
							<b>·</b><a href=""><li>聪明孩子会有的表现</li></a>
							<b>·</b><a href=""><li>0到3岁的宝宝需注意</li></a>
							<b>·</b><a href=""><li>情商培养的重要性</li></a>
							<b>·</b><a href=""><li>7个细节提高逻辑能力</li></a>
							<b>·</b><a href=""><li>添加辅食的几点原则</li></a>
							<b>·</b><a href=""><li>孩子应该怎样教</li></a>
							<b>·</b><a href=""><li>孩子急症的急救攻略</li></a>
							<b>·</b><a href=""><li>孩子总用嘴呼吸危害</li></a>
						</ul>
						<div class="suggest_img">
							<a href=""><img src="${pageContext.request.contextPath}/img/course/suggest.jpg"/></a>
						</div>
					</div>
				</div>
			</div>
			<div class="right aside">
				<div class="aside_h">
					<a href="#">
						<h2>儿童教育动画</h2><span>更多>></span></a>
				</div>
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/pickyeaters.do">
							<img src="${pageContext.request.contextPath}/img/course/v1.png" alt="" />
							<p>为什么说挑食不好</p>
						</a>

					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/sugar.do"><img src="${pageContext.request.contextPath}/img/course/v2.png" alt="" />
							<p>为什么糖不能多吃</p>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/NewYear.do"><img src="${pageContext.request.contextPath}/img/course/v3.png" alt="" />
							<p>为什么新年要放</p>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/luckymoney.do"><img src="${pageContext.request.contextPath}/img/course/v4.png" alt="" />
							<p>为什么新年要给</p>

						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/fruits.do"><img src="${pageContext.request.contextPath}/img/course/v5.png" alt="" />
							<p>为什么儿童不能</p>

						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/washed.do"><img src="${pageContext.request.contextPath}/img/course/v6.png" alt="" />
							<p>为什么水果和蔬菜</p>

						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/aircraft.do"><img src="${pageContext.request.contextPath}/img/course/v7.jpg" alt="" />
							<p>飞机为什么要迎风起落</p>

						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/sun.do"><img src="${pageContext.request.contextPath}/img/course/v8.jpg" alt="" />
							<p>为什么晚上看不见太阳呢</p>

						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/summer.do"><img src="${pageContext.request.contextPath}/img/course/v9.jpg" alt="" />
							<p>为什么夏天会长痱子</p>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Kiddo/Video/getVideoUrl/fish.do"><img src="${pageContext.request.contextPath}/img/course/v10.jpg" alt="" />
							<p>为什么鱼在睡觉时不闭眼睛</p>
						</a>
					</li>
				</ul>
			</div>
		</div>
		</div>
		<!--主体内容开始-->
		
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
	</body>
</html>
