<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-23
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    주소 : <%=request.getParameter("addr")%><br>
    작성자 : programmer <%=request.getParameter("id")%>
<%--    getParameter 빨간줄 있어도 잘 실행되는 상태--%>
</h3>
</body>
</html>