<%@ page import="model.MemberDAO"%>
<%@ page import="model.MemberBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<!-- 0. memberList에서 넘긴 id를 받아줌 -->
	<!-- 1. 데이터 베이스에서 모든 회원의 정보를 가져옴 -->
	<!-- 2. table 태그를 이용하여 화면에 회원들의 정보를 출력 -->	
	
	<%	
		String id = request.getParameter("id"); //memberList id를 받아줌
		MemberDAO mdao = new MemberDAO();
		MemberBean mbean = mdao.oneSelectMember(id); //해당하는  id의 회원정보를 리턴 	
	%>
	
	<table width="400" border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="250"><%=mbean.getId() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">이메일</td>
			<td align="center" width="250"><%=mbean.getEmail() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">전화</td>
			<td align="center" width="250"><%=mbean.getTel() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">취미</td>
			<td align="center" width="250"><%=mbean.getHobby() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">직업</td>
			<td align="center" width="250"><%=mbean.getJob() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">나이</td>
			<td align="center" width="250"><%=mbean.getAge() %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">정보</td>
			<td align="center" width="250"><%=mbean.getInfo() %></td>
		</tr>
		<tr height="50">
			<td align="center" colspan="2">
			<button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId()%>'">회원수정</button>
			<button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'">회원삭제</button>
			<button onclick="location.href='MemberList.jsp'">목록보기</button>
			<button onclick="location.href='MemberJoin.jsp'">회원가입</button>
			</td>
		</tr>
	</table>
</body>
</html>