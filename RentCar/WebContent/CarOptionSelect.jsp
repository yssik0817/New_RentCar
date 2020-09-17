<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/Tr/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int no = Integer.parseInt(request.getParameter("no"));
		//수량
		int qty = 1;
		//int qty = Integer.parseInt(request.getParameter("qty"));
		//이미지
		String img = request.getParameter("img");

		String id = (String)session.getAttribute("id");
		if(id==null){
	%>
		<script>
			alert("로그인을 먼저 해주세요");
			location.href='RentcarMain.jsp?center=Member/MemberLogin.jsp';
		</script>
	<%
		}
		//로그인 되어있는 아이디를 읽어 옴

	%>
	<center>
		<form action="RentcarMain.jsp?center=CarReserveResult.jsp" method="post">
		<table width="1000">
			<tr height="100">
				<td align="center" colspan="3">
					<font size="6" color="blue">옵션 선택</font>
				</td>
			</tr>
			<tr>
				<td rowspan="7" width="500" align="center">
					<img alt="" src="img/<%=img %>"width="450"></td>
				<td width="150" align="center">대여 기간</td>
				<td width="150" align="center">
					<select name="dday">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">대여일</td>
				<td width="250" align="center">
					<input type="date" name="rday" size="15">	
				</td>
			</tr>	
			<tr>
				<td width="250" align="center">보험 적용</td>
				<td width="250" align="center">
					<select name="usein">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">wi-fi 적용</td>
				<td width="250" align="center">
					<select name="usewifi">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>
						<tr>
				<td width="250" align="center">네비게이션 적용</td>
				<td width="250" align="center">
					<select name="usenavi">
						<option value="1">적용(무료)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>	
			<tr>
				<td width="250" align="center">베이비시트</td>
				<td width="250" align="center">
					<select name="useseat">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>	
			<tr>
				<td align="center" colspan="2">
					<input type="hidden" name="no" value="<%=no%>">
					<input type="hidden" name="qty" value="<%=qty %>">
					<input type="submit" value="예약하기">
				</td>			
			</table>
			</form>
			</center>
</body>
</html>