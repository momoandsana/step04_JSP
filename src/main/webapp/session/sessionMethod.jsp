<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-24
  Time: 오전 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%--${pageContext.request.contextPath} 이거 쓰고 싶으면 위에 임포트 필수--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%--%>
<%--  session.setMaxInactiveInterval(10);--%>
<%--  // 10초가 지나면 기존의 세션이 사라지고 새로운 세션으로--%>
<%--%>--%>
<h1>HttpSession 관련 메소드</h1>
<h3>
<%--  빨간줄 나와도 실행된다--%>
getId = <%=session.getId()%><br>
isNew = <%=session.isNew()%><br>
getMaxInactiveInterval = <%=session.getMaxInactiveInterval()%><br>
getCreationTime = <%=session.getCreationTime()%><br>
  getLastAccessedTime = <%=session.getLastAccessedTime()%></h3>

<%
  //세션 영역에 정보를 저장해보자(서버측에 저장)
  session.setAttribute("name","희정");
  session.setAttribute("id","jang");
  session.setAttribute("hobbies",new String[]{"등산","수영","낚시"}); // 서버 어딘가에 저장함
%>
<h3>session에 저장된 정보 조회</h3>
이름 : <%=session.getAttribute("name")%><br>
나이 : <%=session.getAttribute("id")%><br>
취미 : <%=session.getAttribute("hobbies")%><br>

<a href="sessionGet.jsp">jsp로 이동</a><br>
<a href="${pageContext.request.contextPath}/sessionServlet">servlet 이동</a>

</body>
</html>
