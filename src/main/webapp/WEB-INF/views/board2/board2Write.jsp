<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 게시판 글작성(board2)</title>
</head>
<body>

<form action="board2Write.do" method="post">
<table border=1>
<caption>기본 게시판 글작성</caption>

<tr>
<th>작성자</th>
<td><input type="text" name="writer" id="writer"></td>
</tr>

<tr>
<th>제목</th>
<td><input type="text" name="title" id="title"></td>
</tr>

<tr>
<th>내용</th>
<td><input type="text" name="content" id="content"></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="작성">
</td>
</tr>

</table>
</form>

</body>
</html>