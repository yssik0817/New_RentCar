<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String id = (String) session.getAttribute("id");

	//로그인이 되어있지 않다면
	if(id==null){
		id="GUEST";
	}
%>
<body>
<table width="1000" bordercolor="white">
	<tr height="70">
		<td colspan="4">
			<a href="RentcarMain.jsp" style="text-decoration:none">
			<img alt="" src="img/logo.jpg" height="80">
			</a>
		</td>
		<td align="center" width="200">
			<%=id %> 님 
		<%
			if(id.equals("GUEST")){ %>
			<button onclick="location.href='RentcarMain.jsp?center=Member/MemberLogin.jsp'"> 로그인 </button>
		<%
			}else{%>
			<button onclick="location.href='Member/MemberLogout.jsp'"> 로그아웃 </button>	
			<button onclick="location.href='RentcarMain.jsp?center=Member/MemberUpdateForm.jsp'"> 회원 수정 </button>	
		<%			
			}
		%>
		</td>
	</tr>
	<tr height="50">
		<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4">
					<a href="RentcarMain.jsp?center=CarReserveMain.jsp" 
						style="text-decoration:none">예약하기</a></font>
		</td>
		<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4">
				<a href="RentcarMain.jsp?center=CarReserveView.jsp" 
					style="text-decoration:none">예약확인</a></font>
		</td>
		<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4"><a href="RentcarMain.jsp?center=Board/BoardList.jsp" 
					style="text-decoration:none">후기 게시판</a></font>
		</td>
		<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4"><a href="RentcarMain.jsp?center=Event/EventList.jsp" 
					style="text-decoration:none">이벤트</a></font>
		</td>
		<td align="center" width="200" bgcolor="skyblue">
			<font color="white" size="4"><a href="#" style="text-decoration:none">고객센터</a></font>
		</td>
	</tr>
</table>
</body>
</html>