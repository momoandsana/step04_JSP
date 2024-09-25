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
<c:set var="info" value="배고파" scope="application"/>

<%--출력해보자--%>
${id} / ${addr} / ${info}

<c:out value="${sessionScope.id}"/><br>
<c:out value="${info}"/><br>
<c:out value="${addr}"/><br>
</body>
</html>
