<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 정보 삭제하기</h2>
	<table width="400" border="1">
	<form action="MemberDeleteProc.jsp" method="post">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250"><%=request.getParameter("id") %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">비밀번호</td>
			<td align="center" width="250">
			<input type="password" name="pass1">
			</td>
		</tr>
		<tr height="50">
			<td align="center" colspan="2">
			<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
			<input type="submit" value="회원 삭제하기"> &nbsp;&nbsp;
	</form>
			<button onclick="location.href='MemberList.jsp'">회원전체보기</button>
			</td>
		</tr>
	</table>
</body>
</html>