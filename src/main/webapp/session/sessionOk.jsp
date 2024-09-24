<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-24
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>sessionOk 입니다</h2>
<h3>session에 저장된 정보 조회</h3>
이름 : <%=session.getAttribute("name")%><br>
나이 : <%=session.getAttribute("id")%><br>
취미 : <%=session.getAttribute("hobbies")%><br>

</body>
</html>
