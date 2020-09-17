<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 쓰기</title>
</head>
<body>

		<%
			String id = (String)session.getAttribute("id");
			if(id==null){
		%>
			<script>
				alert("로그인을 먼저 해주세요");
				location.href='RentcarMain.jsp?center=Member/MemberLogin.jsp';
			</script>
		<%
			}
		%>
		
<h2>게시글 쓰기</h2>
	<form action="../Board/BoardWriteProc.jsp" method="post">
		<table width="600" border="1" bordercolor="skyblue" bgcolor="#3891ff">
			<tr height="40">
				<td align="center" width="150"><a style="color: white">작성자</a></td>
				<td width="450"><input type="text" name="writer" size="50"></td>
			</tr>
			<tr height="40">
				<td align="center" width="150"><a style="color: white">제목</a></td>
				<td width="450"><input type="text" name="subject" size="50"></td>
			</tr>
			<tr height="40">
				<td align="center" width="150"><a style="color: white">이메일</a></td>
				<td width="450"><input type="email" name="email" size="50"></td>
			</tr>
			<tr height="40">
				<td align="center" width="150"><a style="color: white">비밀번호</a></td>
				<td width="450"><input type="password" name="password" size="50"></td>
			</tr>
			<tr height="40">
				<td align="center" width="150"><a style="color: white">글내용</a></td>
				<td width="450"><textarea rows="10" cols="50" name="content"></textarea></td>
			</tr>
			<tr height="40">
				<td align="center" colspan="2">
					<input type="submit" value="글쓰기"> &nbsp;&nbsp; 
					<input type="reset" value="다시작성"> &nbsp;&nbsp;
					<button onclick="location.href='RentcarMain.jsp?center=/Board/BoardList.jsp'">전체 게시글 보기</button>
				</td>
			</tr>

		</table>
	</form>
</body>
</html>