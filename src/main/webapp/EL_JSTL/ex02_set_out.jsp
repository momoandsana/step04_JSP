<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-25
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>&lt;c:set> and &lt;c:out> 테스트</h3>
<c:set var="id" value="jang" />
<c:set var="addr" value="서울" scope="session"/>
<c:set var="info" value="<h5>배고파</h5>" scope="application"/>

<%--자바코드--%>
<%--// 1. 페이지 스코프에 id 값을 설정 (기본 스코프)--%>
<%--pageContext.setAttribute("id", "jang");--%>

<%--// 2. 세션 스코프에 addr 값을 설정--%>
<%--session.setAttribute("addr", "서울");--%>

<%--// 3. 애플리케이션 스코프에 info 값을 설정--%>
<%--getServletContext().setAttribute("info", "배고파");--%>


<%--출력해보자--%>
${id} / ${addr} / ${info}<br><br>

<c:out value="${id}"/><br>
<c:out value="${info}"/><br>
<c:out value="${info}" escapeXml="false"/><br>
<c:out value="${addr}"/><br>

<a href="ex02_result.jsp">이동</a>

</body>
</html>
