<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Cookie 정보 확인하기 - application 폴더에서</h2>
<%--원래 쿠키는 쿠키가 있는 폴더에서만 접속이 가능하지만 지금은 setPath 를 / 로 해서 여기(다른 폴더)에서도 접근 가능--%>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        out.println("쿠키 개수 = " + cookies.length + "<br>");

        for (Cookie co : cookies) {
            out.println("co.getName() = " + co.getName() + "<br>");
            out.println("co.getValue() = " + co.getValue() + "<br>");
        }
    } else {
        // 쿠키가 없는 경우
        out.println("저장된 cookie 정보가 없어 jsessionID 저장함");
    }
%>
</body>
</html>
