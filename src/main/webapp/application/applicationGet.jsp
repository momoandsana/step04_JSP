<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-24
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>저장된 정보를 확인해보자-application</h3>
    주소 : <%=application.getAttribute("addr")%><br>
    메시지 : <%=application.getAttribute("message")%>
    <%--application 은 다른 브라우저에서도 시크립 탭에서도 유효하다--%>

    <h3>이동해보자</h3>
    <a href="<%=application.getContextPath()%>">/session/sessionGet.jsp</a><br>
    <a href="${pageContext.request.contextPath/sessionServlet}">서블릿</a>


</body>
</html>
