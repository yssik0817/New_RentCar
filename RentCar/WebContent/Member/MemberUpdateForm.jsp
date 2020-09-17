<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정하기</title>
</head>
<body>
	<%	
		String id = request.getParameter("id"); //memberList id를 받아줌
		MemberDAO mdao = new MemberDAO();
		MemberBean mbean = mdao.oneSelectMember(id); //해당하는  id의 회원정보를 리턴 	
			System.out.println(mbean.getId());
			System.out.println(mbean.getEmail());
	%>
	
	<h2>회원 정보 수정하기</h2>
	<form action="../Member/MemberUpdateProc.jsp" method="post">
	<table width="400" border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250"><%=mbean.getId() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">이메일</td>
			<td align="center" width="250">
			<input type="email" name="email" value="<%=mbean.getEmail()%>">
			</td>
		</tr>
		<tr height="50">
			<td align="center" width="150">전화</td>
			<td align="center" width="250">
			<input type="tel" name="tel" value="<%=mbean.getTel()%>">
			</td>
		</tr>
		<tr height="50">
			<td align="center" width="150">비밀번호</td>
			<td align="center" width="250">
			<input type="password" name="pass1">
			</td>
		</tr>
		<tr height="50">
			<td align="center" colspan="2">
			<input type="hidden" name="id" value="<%=mbean.getId()%>">
			<input type="submit" value="회원 수정하기"> &nbsp;&nbsp;
			</td>
		</tr>
	</table>
	</form>
	<button onclick="history.back()"><font size="3" color="gray">Back</font></button>
	
</body>
</html>