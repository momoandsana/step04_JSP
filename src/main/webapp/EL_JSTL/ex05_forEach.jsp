<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h3>&lt;c:forEach> Test</h3>
<c:forEach begin="1" end="10" var="i">
  ${i},
</c:forEach>

<hr>

<jsp:useBean id="bean" class="ex0925.el.ForEachBean"/>
${bean.names}<br>
${bean.menus}<br>
${bean.boardList}<br>
${bean.map}<br>

<%-- 이름은 체크박스 --%>
<fieldset>
  <legend>이름</legend>
  <c:forEach items="${bean.names}" var="name" varStatus="state">
    <input type="checkbox" name="name" value="${state.index}">${name}<br>
  </c:forEach>
</fieldset>

<%-- 1. 메뉴는 select 출력 --%>
<fieldset>
  <legend>메뉴 선택</legend>
  <select name="menu">
    <c:forEach items="${bean.menus}" var="menuSelect">
      <option value="${menu}">${menuSelect}</option>
<%--      menu에 선택한 값이 들어간다--%>
    </c:forEach>
  </select>
</fieldset>

<%-- 2. boardList는 테이블 --%>
<fieldset>
  <legend>게시판 목록</legend>
  <table border="3">
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>내용</th>
    </tr>
    <c:forEach items="${bean.boardList}" var="board">
      <tr>
        <td>${board.no}</td>
        <td>${board.subject}</td>
        <td>${board.content}</td>
      </tr>
    </c:forEach>
  </table>
</fieldset>


<%-- 3. map는 radio 출력 --%>
<fieldset>
  <legend>국가 선택</legend>
  <c:forEach items="${bean.map}" var="country">
    <input type="radio" name="country" value="${country.key}">${country.value}<br>
<%--    value를 선택하면 그 value 에 대한 key가 value 에 들어감--%>
  </c:forEach>
</fieldset>

</body>
</html>
