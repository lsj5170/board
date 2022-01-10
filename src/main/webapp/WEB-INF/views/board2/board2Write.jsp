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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>

<form action="board2Write.do" method="post">
<table class="table" border=1>
<h2>기본 게시판 글작성</h2>

<tbody>
<tr>
<th>작성자</th>
<td><input type="text" name="writer" id="writer" size="20" required="required"></td>
</tr>

<tr>
<th>제목</th>
<td><input type="text" name="title" id="title" size="50" required="required"></td>
</tr>

<tr>
<th>내용</th>
<td><textarea type="text" name="content" id="content" rows="10" cols="70" required="required"></textarea></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="작성" class="btn btn-info">
<input type="button" value="목록" class="btn btn-secondary" onClick="location='${path}/board2List.do'">
</td>
</tr>
</tbody>

</table>
</form>

</body>
</html>