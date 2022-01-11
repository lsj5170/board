<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>기본 게시판 글수정(board2)</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>

<form>
<table class="table" border=1>
<h2>글 수정 페이지</h2>

<tbody>
<tr>
<th>번호</th>
<td>${board2list.num}</th>
</tr>

<tr>
<th>제목</th>
<td><input type="text" name="title" id="title" value="${board2list.title}" size="50"></td>
</tr>

<tr>
<th>조회수</th>
<td>${board2list.readcount}</td>
</tr>

<tr>
<th>작성자</th>
<td>${board2list.writer}</td>
</tr>

<tr>
<th>작성일</th>
<td><fmt:formatDate value="${board2list.regdate}" pattern="yyyy-MM-dd hh:mm"/></td>
</tr>


<tr>
<th>내용</th>
<td><textarea rows="10" cols="70" name="content">${board2list.content}</textarea></td>
</tr>


<tr>
<td colspan="3" align="center">
<input type="button" value="글목록" onClick="location='${path}/board2List.do/pageNum/${pageNum}'">
<input type="button" value="글수정" onClick="location='${path}/board2Update.do/pageNum/${pageNum}'">
</td>
</tr>

</tbody>

</table>
</form>


</body>
</html>