<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-25
  Time: 오후 2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>&lt;c:set>에 저장된 값 확인</h1>
아이디 :${id} <br>
주소 : ${addr} <br>
info : ${info} / <c:out value="${info}"/><br>

</body>
</html>
