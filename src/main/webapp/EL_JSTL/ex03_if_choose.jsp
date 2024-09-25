<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-25
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="http://jakarta.apache.org/jsp/jstl/core" %>--%>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>&lt;c:if> and &lt;c:choose> TEST</h3>
<%--http://localhost:9090/EL_JSTL/ex04_if_choose.jsp?age=10%>
<%--만약 age의 값이 있으면 당신의 나이는 ~ 살입니다 출력--%>
<c:if test="${not empty param.age}">
<%--<c:if test="${age}">--%>
<%--  이렇게 하면 scope 에 있는거 찾아옴--%>
<h4 style="color:blue">당신의 나이는 ${param.age}살입니다</h4>
</c:if>

<%--age가 있다면 age값이 18보다 크면 -> 많은 이용 부탁드립니다 -blue--%>
<%--아니면 "미성년자는 접근할 수 없습니다--%>
<c:if test="${param.age != null}">
  <c:choose>
    <c:when test="${param.age >18}">
      <h4 style="color:green">많은 이용 부탁드립니다</h4>
<%--      when은 if 같은 느낌--%>
    </c:when>
    <c:otherwise>
      <h4 style="color:red">미성년자는 접근할 수 없습니다</h4>
<%--      otherwise는 else 같은 느낌--%>
    </c:otherwise>
  </c:choose>
</c:if>
</body>
</html>
