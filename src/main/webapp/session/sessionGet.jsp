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
<%--같은 브라우저 안에서는 세션에 정보 꺼내서 사용할 수 있어--%>
    <h3>session에 저장된 정보 조회</h3>
    이름 : <%=session.getAttribute("name")%><br>
    나이 : <%=session.getAttribute("id")%><br>
    취미 : <%=session.getAttribute("hobbies")%><br>
</body>
</html>
