<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-24
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>ServletContext-application</h1>
getRealPath : <%=application.getRealPath("/")%><br>
<%--"/" 는 루트--%>
getContextPath : <%=application.getContextPath()%><br>

<%
    //ServletContext 에서 정보를 저장해보자
    application.setAttribute("addr","오리역");
    application.setAttribute("message","application 학습 중"); // key 는 string, value 는 object 형식으로 저장이 된다
%>

<h3>저장된 정보를 확인해보자</h3>
주소 : <%=application.getAttribute("addr")%><br>
메시지 : <%=application.getAttribute("message")%>
<%--application 은 다른 브라우저에서도 시크립 탭에서도 유효하다--%>

<a href="applicationGet.jsp">이동해보자</a>

</body>
</html>
