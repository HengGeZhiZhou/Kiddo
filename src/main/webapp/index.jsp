<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>首页</title>
    <link rel="shortcut icon" type="text/css" href="${pageContext.request.contextPath}/img/kidoo.ico"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
    <script src="${pageContext.request.contextPath}/js/index.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<!--头部开始-->
<header>
    <a href="index.jsp" class="logo left">
        <img src="${pageContext.request.contextPath}/img/logo.png"/>
    </a>
    <div class="login right">
        <%
            String username = (String) session.getAttribute("username");
            if (username == null || username.equals("")) {
        %>
        <form action="${pageContext.request.contextPath}/Kiddo/User/login.do" method="post">
            <input type="text" class="text" name="account" placeholder="请输入您的用户名"/>
            <input type="password" class="text" name="password" placeholder="请输入您的密码"/>
            <input type="submit" class="btn" name="login" value="登录"/>
            <%--<input type="button" class="btn" name="register" value="注册"/>--%>
        </form>
            <a href="${pageContext.request.contextPath}/">注册</a>
        <%
            }
            else {
                %>
            欢迎<%=username%>来到本网站
            <br><a href="${pageContext.request.contextPath}/Kiddo/logout.do">退出</a>
        <%
            }
        %>

    </div>
</header>
<!--头部结束-->

<!--导航开始-->
<nav>
    <a href="${pageContext.request.contextPath}/index.jsp">Kido首页</a>
    <a href="${pageContext.request.contextPath}/kiddoCourses.jsp">Kido课堂</a>
    <a href="${pageContext.request.contextPath}/kiddoOrg.jsp">Kido机构</a>
    <a href="${pageContext.request.contextPath}/kiddoChild.jsp">Kido育儿</a>
    <a href="${pageContext.request.contextPath}/kiddoMap.jsp">Kido地图</a>
</nav>
<!--导航结束-->

<!--主体内容开始-->
<div id="main">
    <!--轮播图-->
    <div id="pic_box" class="img_play">

        <img id="auto_img" src="${pageContext.request.contextPath}/img/a1.jpg"/>
        <img id="small_logo" src="${pageContext.request.contextPath}/img/A.png"/>
        <div id="btn_pic_l" class="btn_pic left"></div>
        <div id="btn_pic_r" class="btn_pic right"></div>

    </div>
    <!--轮播图-->

    <!--内容开始-->
    <div class="content">
        <div class="left news">
            <div class="left news_l">
                <!--精彩瞬间-->
                <div class="jingc">
                    <img src="${pageContext.request.contextPath}/img/index/k1.jpg"/>
                    <ul>
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                    </ul>
                </div>
                <!--网站简介-->
                <div class="webi">
                    <a href=""><img src="${pageContext.request.contextPath}/img/index/h1.png" alt=""/></a>
                    <p>网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介
                        网站简介网站简介网站简介网站简介网站简介网站简介</p>
                </div>
            </div>
            <div class="right news_r">
                <!--中心新闻-->
                <div class="neww">
                    <a href=""><img src="${pageContext.request.contextPath}/img/index/h2.png" alt=""/></a>
                    <ul>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                    </ul>
                </div>
                <!--行业资讯-->
                <div class="hangy">
                    <a href=""><img src="${pageContext.request.contextPath}/img/index/h3.png" alt=""/></a>
                    <ul>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                        <li>网站简介网站简介网站简介网站简介网站简介网站简介</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="right contact">
            <div class="con_img">
                <a href=""><img src="${pageContext.request.contextPath}/img/index/c1.png" alt=""/></a>
                <a href=""><img src="${pageContext.request.contextPath}/img/index/c2.png" alt=""/></a>
                <a href=""><img src="${pageContext.request.contextPath}/img/index/c3.png" alt=""/></a>
                <a href=""><img src="${pageContext.request.contextPath}/img/index/c4.png" alt=""/></a>
                <a href=""><img src="${pageContext.request.contextPath}/img/index/c5.png" alt=""/></a>
            </div>

        </div>
    </div>
    <!--内容结束-->

</div>
<!--主体内容结束-->
<div class="bottm_img">
    <a href=""><img src="${pageContext.request.contextPath}/img/index/footer.jpg"/></a>
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
        <a href="#">视频索引</a> <br/>Copyright &copy; 2017 www.kiddo.com 成师小分队 版权所有 <span>京ICP证0843234号</span>
    </div>
</footer>
</body>

</html>