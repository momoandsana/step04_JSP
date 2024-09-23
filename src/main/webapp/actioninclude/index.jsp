<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-23
  Time: 오후 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String addr="강남구";
%>
<%--    외부의 top.jsp 연결--%>
<jsp:include page="top.jsp"/>

<h1>여기는 메인 영역입니다</h1>

<%--include 되는 문서쪽으로 param 정보 설정--%>

<jsp:include page="footer.jsp">
    <jsp:param name="addr" value="<%=addr%>"/>
    <jsp:param name="id" value="jang"/>
<%--footer 로 addr, id 값을 보냄--%>
</jsp:include>

</body>
</html>