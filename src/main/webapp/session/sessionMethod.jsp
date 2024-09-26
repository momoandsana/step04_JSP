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
  //세션 영역에 정보를 저장해보자(서버측에 저장), 값을 입력 받는 것이 아니라 그냥 하드코딩
  session.setAttribute("name","희정");
  session.setAttribute("id","jang");
  session.setAttribute("hobbies",new String[]{"등산","수영","낚시"}); // 서버 어딘가에 저장함
%>
<h3>session에 저장된 정보 조회</h3>
이름 : <%=session.getAttribute("name")%><br>
나이 : <%=session.getAttribute("id")%><br>
취미 : <%=session.getAttribute("hobbies")%><br>

<a href="sessionGet.jsp">jsp로 이동</a><br>
<%--상대경로로 이동한다. sessionGet 파일은 현재 파일과 같은 경로(폴더)에 있으므로 상대경로로 표현 "/" 사용하지 않는다--%>
<a href="${pageContext.request.contextPath}/sessionServlet">servlet 이동</a>
<%--여기서 자바 코드로 포워딩하거나 리다이렉트해서 데이터를 전송하지 않기 때문에 reques.setAtrribute()해서 데이터를 전송하지 않고--%>
<%--session 에 데이터를 담았다--%>
<%--여기서 href로 이동하면 별개의 요청이기 때문에 request.setAttribute해도 데이터는 담기지 않는다, 리다이렉션임--%>
<%--a href 는 url를 변경한다--%>
<%-- webapp/sessionServlet과 같다--%>

</body>
</html>
