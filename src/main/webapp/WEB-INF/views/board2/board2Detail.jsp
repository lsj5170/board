<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>기본 게시판 상세페이지(board2)</title>


</head>
<body>

<form>
<table border=1>
<caption>글 상세 페이지</caption>
<tr>
<th>번호</th>
<th>제목</th>
<th>조회수</th>
</tr>




<tr>
<td>${board2list.num}</td>
<td>${board2list.title}</td>
<td>${board2list.readcount}</td>
</tr>

<tr>
<th>작성자:${board2list.writer}</th>
<th colspan="2">작성일:<fmt:formatDate value="${board2list.regdate}" pattern="yyyy-MM-dd"/></th>
</tr>


<tr>
<td colspan="3">내용:${board2list.content}</td>
</tr>

<tr>
<td colspan="3" align="center">
<input type="button" value="글목록" onClick="location='${path}/board2List.do'">
<input type="button" value="글수정" onClick="location='${path}/board2UpdateForm.do/num/${board2list.num}'">
<input type="button" value="글삭제" onClick="location='${path}/board2Delete.do/num/${board2list.num}'">
</td>
</tr>




</table>
</form>

</body>
</html>