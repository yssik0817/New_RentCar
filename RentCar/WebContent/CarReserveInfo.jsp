<%@page import="db.CarListBean"%>
<%@page import="db.RentcarDAO"%>
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
		
		//데이터 베이스에 접근
		RentcarDAO rdao = new RentcarDAO();
		//렌트카 하나에 대한 정보 얻어오기
		CarListBean bean = rdao.getOneCar(no);
		//카테고리 분류값을 받아옴.
		int category = bean.getCategory();
		String temp="";
		if(category==1)temp="소형";
			else if(category==2)temp="중형";
			else if(category==3)temp="대형";
	%>
	
	<center>
		<form action="RentcarMain.jsp?center=CarOptionSelect.jsp" method="post">
		<table width="1000">
			<tr height="100">
				<td align="center" colspan="3">
					<font size="6" color="blue"><%=bean.getName() %></font>
				</td>
			</tr>
			<tr>
				<td rowspan="6" width="500">
					<img alt="" src="img/<%=bean.getImg() %>"width="450"></td>
				<td width="150" align="center">차량 이름</td>
				<td width="150" align="center"><%=bean.getName() %></td>
			</tr>
			<tr>
				<td width="150" align="center">탑승 인원</td>
				<td width="150" align="center"><%=bean.getUsepeople() %></td>
			</tr>
			<tr>
				<td width="150" align="center">차량 분류</td>
				<td width="150" align="center"><%=temp %></td>
			</tr>
			<tr>
				<td width="150" align="center">대여 가격</td>
				<td width="150" align="center"><%=bean.getPrice() %></td>
			</tr>
			<tr>
				<td width="150" align="center">제조회사</td>
				<td width="150" align="center"><%=bean.getCompany()%></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="hidden" name="no" value="<%=bean.getNo() %>">
					<input type="hidden" name="img" value="<%=bean.getImg() %>">
					<input type="submit" value="옵션 선택 후 구매하기">
			</tr>		
		</table>	
		</form>
			<br>
			<p><font size=" 5" color="gray">차량 정보 </font>
			<p><%=bean.getInfo() %>
	</center>
	
</body>
</html>