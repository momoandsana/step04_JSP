<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-24
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 같은 브라우저 안에서는 세션에 정보 꺼내서 사용할 수 있어 --%>
<h3>session에 저장된 정보 조회</h3>
이름 : <%= session.getAttribute("name") != null ? session.getAttribute("name") : "정보 없음" %><br>
나이 : <%= session.getAttribute("age") != null ? session.getAttribute("age") : "정보 없음" %><br>
취미 : <%= session.getAttribute("hobbies") != null ? session.getAttribute("hobbies") : "정보 없음" %><br>

<h3>이동해보자</h3>
<a href="<%= application.getContextPath() %>/session/sessionGet.jsp">/session/sessionGet.jsp</a><br>
<a href="<%= application.getContextPath() %>/sessionServlet">서블릿</a>
</body>
</html>
