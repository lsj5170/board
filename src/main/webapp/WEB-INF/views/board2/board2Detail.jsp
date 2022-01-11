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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
function check(){
	if(confirm("정말 삭제하시겠습니까?")==true){
		location='${path}/board2Delete.do/num/${board2list.num}';
		alert("삭제되었습니다.");
	}
}
</script> 

</head>
<body>

<form>
<table class="table" border=1>
<h2>글 상세 페이지</h2>

<tbody>
<tr>
<th>번호</th>
<td>${board2list.num}</th>
</tr>

<tr>
<th>제목</th>
<td>${board2list.title}</td>
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
<td>${board2list.content}</td>
</tr>

<tr>
<td colspan="3" align="center">
<input type="button" value="글목록" onClick="location='${path}/board2List.do'">
<input type="button" value="글수정" 
onClick="location='${path}/board2UpdateForm.do/num/${board2list.num}/pageNum/${pageNum}'">
<input type="button" value="글삭제" onClick="check()">
</td>
</tr>
</tbody>


</table>
</form>

</body>
</html>