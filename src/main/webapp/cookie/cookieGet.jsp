<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Cookie 정보 확인하기 </h2>
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
