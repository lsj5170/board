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

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>


<form action="${path}/board2WritePage.do" method="post">
<table class="table" border=1>
<h2>기본 게시판(board2)</h2>

<thead>
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>날짜</th>
<th>조회수</th>
</tr>
</thead>

<c:if test="${empty board2list}">

<tr>
<td colspan="5" align="center">※게시글이 존재하지 않습니다.</td>
</tr>

</c:if>


<c:set var="no1" value="${no}"></c:set>

<c:forEach var="board2" items="${board2list}">

<tbody>
<tr>
<td>${no1}</td>
<td><a href="${path}/board2Detail.do/num/${board2.num}/pageNum/${pp.currentPage}">${board2.title}</a></td>
<td>${board2.writer}</td>
<td><fmt:formatDate value="${board2.regdate}" pattern="yyyy-MM-dd hh:mm" /></td>
<td>${board2.readcount}</td>
</tr>

<c:set var="no1" value="${no1 - 1}"></c:set>

</c:forEach>

<tr>
<td colspan="5" align="center">
<input type="submit" value="글작성" class="btn btn-info" >
</td>
</tr>
</tbody>

</table>
</form>

<!-- 페이징처리 -->
<div class="container mt-3">
<ul class="pagination justify-content-center">

<c:if test="${pp.startPage > pp.pagePerBlk}">
<li class="page-item"><a href="${path}/board2List.do/num/${pp.startPage -1}" class="page-link">이전</a></li>
</c:if>


<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
<li <c:if test="${pp.currentPage ==i }"> class="page-item active" </c:if> class="page-item">
<a href="${path}/board2List.do/num/${i}" class="page-link">${i}</a></li>
</c:forEach>


<c:if test="${pp.endPage < pp.totalPage}">
<li class="page-item"><a href="${path}/board2List.do/num/${pp.endPage+1}" class="page-link">다음</a></li>
</c:if>

</ul>
</div>


</body>
</html>