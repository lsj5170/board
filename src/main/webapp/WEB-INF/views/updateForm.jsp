<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() { // submit버튼 눌렀을때 호출됨 
		if(frm.passwd.value != frm.passwd2.value) { //passwd2 : 입력한 비번  , passwd는 hidden으로 넘어온값
			alert("암호가 다르면 수정할 수 없습니다");
			frm.passwd2.focus();   //.val("") 추가하니깐 수정되어버림..ㄷ
			return false;
		}
	}
</script>
</head>

<body>
	<div class="container" align="center">
		<h2 class="text-primary">게시글 글수정</h2>
		<form action="update.do" method="post" name="frm"
			  onsubmit="return chk()">
			<input type="hidden" name="num" value="${board.num}"> 
			<input type="hidden" name="pageNum" value="${pageNum}"> 
			<input type="hidden" name="passwd" value="${board.passwd}">
			<table class="table table-striped">
				<tr>
					<td>번호</td>
					<td>${board.num}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject" required="required"
								value="${board.subject}"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" required="required"
								value="${board.writer}"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" required="required"
								value="${board.email}"></td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="passwd2" required="required"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="5" cols="30" name="content" required="required">${board.content}
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>