<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 게시판(board2)</title>
</head>
<body>

<p1>기본 게시판(board2)</p1>

<form action="board2WritePage.do" method="post">
<table border=1>
<h2>기본 게시판(board2)</h2>
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>날짜</th>
<th>조회수</th>
</tr>

<c:forEach var="board2" items="${board2list}">

<tr>
<th>${board2.num}</th>
<th><a href="board2Detail.do/num/${board2.num}">${board2.title}</a></th>
<th>${board2.writer}</th>
<th><fmt:formatDate value="${board2.regdate}" pattern="yyyy-MM-dd" /></th>
<th>${board2.readcount}</th>
</tr>

</c:forEach>

<tr>
<td colspan="5" align="center">
<input type="submit" value="글작성" >
</td>
</tr>


</table>
</form>

</body>
</html>