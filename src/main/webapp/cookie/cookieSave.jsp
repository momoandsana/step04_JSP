<%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-26
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>쿠키 저장하기</h1>
<%
  Cookie co1=new Cookie("id","jang");
  Cookie co2=new Cookie("age","20");

  //옵션 설정
  co1.setMaxAge(60*60*24); // 하루
  co2.setMaxAge(60*60*24*365); // 1년

  co1.setPath("/"); // 쿠키를 접근할 수 있는 경로를 설정
  co2.setPath("/");

  //클라이언트쪽에 전송해서 저장한다, 원래는 서블릿에서 response 해야 한다
  response.addCookie(co1);
  response.addCookie(co2);

%>

<a href="cookieGet.jsp">쿠키확인하러가자</a>
<%-- 같은 경로에 있기 때문에 상대경로 사용 --%>

</body>
</html>
