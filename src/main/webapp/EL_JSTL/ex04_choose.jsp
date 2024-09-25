<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-25
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h3>&lt;c:choose> Test</h3>
<form action="ex04_choose.jsp" method="get">
  이름 : <input type="text" name="name" value="${param.name}"><br>
  선택 :
  <select name="job">
    <option value="0">--선택--</option>
    <option value="개발자" <c:if test="${param.job == '개발자'}">selected</c:if>>--개발자--</option>
    <option value="디자이너" <c:if test="${param.job == '디자이너'}">selected</c:if>>--디자이너--</option>
    <option value="DBA" <c:if test="${param.job == 'DBA'}">selected</c:if>>--DBA--</option>
    <option value="기획자" <c:if test="${param.job == '기획자'}">selected</c:if>>--기획자--</option>
  </select><p>
  <input type="submit" value="전송">
</form>

<%--1. 만약 name, job 이 전송된다면 "~님 직업은 ~입니다" 출력--%>
<%--2. job의 종류에 따라 메시지 출력--%>
<%--3. 값이 전송되었다면--%>
<%--  전송된 값으로 폼에 출력을 한다--%>

<c:if test="${not empty param.name and not empty param.job and param.job != '0'}">
  <h4>${param.name}님 직업은 ${param.job}입니다</h4>

<%--  when otherwise 쓰기 위해서는 choose 필요--%>

  <c:choose>
    <c:when test="${param.job=='개발자'}">
      <h4 style="color:coral">당신의 직업은 개발자</h4>
    </c:when>

    <c:when test="${param.job=='디자이너'}">
      <h4 style="color:coral">당신의 직업은 디자이너</h4>
    </c:when>

    <c:when test="${param.job=='DBA'}">
      <h4 style="color:coral">당신의 직업은 DBA</h4>
    </c:when>

    <c:otherwise>
      <h4>당신의 직업은 기획자</h4>
    </c:otherwise>
  </c:choose>
</c:if>
</body>
</html>
