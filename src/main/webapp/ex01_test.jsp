<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-23
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSP test</h1>
<%
    //여기는 자바영역
    String name="희정"; //지역변수
    int age=10; // 지역변수이기 때문에 무조건 값을 넣어야 한다, 만약 %! 인경우에는 전역변수이므로 0이 자동으로 들어간다
%>

<h3>
    이름 : <%=name%><br>
    나이 : <%=age%><br>
</h3>

</body>
</html>
