<%@ page import="ex0925.el.Product" %><%--
  Created by IntelliJ IDEA.
  User: swift
  Date: 2024-09-25
  Time: 오전 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>EL(Expression Language)</h3>
\${5}=${5}

\${"안녕"}=${"안녕"}<br>
\${'안녕'}=${'안녕'}<br>
<%--"" '' 모두 가능--%>

\${5 gt 3 and 10 eq 10}=${5 gt 3 and 10 eq 10}<br>
\${5 > 3 && 10==10} = ${5 > 3 && 10==10}<br>

<%--삼항연산자--%>
\${5 gt 3 ? "크다":"작다"}=${5 gt 3 ? "크다":"작다"}<hr>

<%--url 뒤에 ?age=나이 --%>
<%--http://localhost:9090/EL_JSTL/ex01_elTest.jsp?age=12--%>
${param.age>18 ? "성인":"아이"}

<%--http://localhost:9090/EL_JSTL/ex01_elTest.jsp?age=12&id=값--%>
${param.id==null ? "Guest":param.id}<br>

<%--아이디가 있는 경우에만 님을 붙이고 싶다면--%>
<%--${empty param.id?"Guest":param.id.concat("님")}<br>--%>
${empty param.id?"Guest":param.id+="님"}<br><hr>

<%
  //xxxScope 영역에 정보 저장해보자
  request.setAttribute("id", "jang");

  session.setAttribute("name", "heejung");
  session.setAttribute("addr", "오리역");

  application.setAttribute("addr", "서울");
  application.setAttribute("message", "EL 학습중");

%>
<h3>scope 정보 조회하기</h3>
아이디 : ${requestScope.id}<br>
아이디 : ${id}<br>
이름 : ${sessionScope.name}<br>

주소(session) : ${sessionScope.addr}<br>
주소(application) : ${applicationScope.addr}<br>
<%--지금처럼 같은 속성이 있는 경우에는 addr ${addr}로 쓰는 경우에는 가장 위에 요소가 선택이 된다--%>
message : ${applicationScope.message}<br>

<h3>Product 상품 조회</h3>
<%--<%--%>
<%--  Product p=new Product();--%>
<%--%>--%>

<%--객체 생성--%>
<jsp:useBean id="p" class="ex0925.el.Product"/>

상품코드 : <%=p.getCode()%> / ${p.code}<br>
이름 : ${p.name}<br>
수량 : ${p.qty}<br>
가격 : ${p.price}<br>
총금액(수량*가격) : ${p.qty*p.price}<br>


</body>
</html>
