<%@ page import="com.cs.kiddo.entity.AbArticles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <% AbArticles abArticles= (AbArticles) request.getAttribute("news"); %>
      <h1><%=abArticles.getTitle()%></h1><br>
      <div>
          <%=abArticles.getContents()%>
      </div>
        <div>
            <%=abArticles.getAuthor()%>
        </div>
</body>
</html>
