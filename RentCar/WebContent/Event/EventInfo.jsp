<%@page import="db.EventBean"%>
<%@page import="db.EventDAO"%>
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
		EventDAO edao = new EventDAO();
		
		//렌트카 하나에 대한 정보 얻어오기
		EventBean bean = edao.getOneEvent(no);
	%>
	
	<center>
		<table width="1000">
			<tr height="100">
				<td align="center">
					<font size="6" color="#00498c"><%=bean.getName() %></font>
				</td>
			</tr>
			<tr>
				<td width="150" align="center">이벤트 기간 : <%=bean.getPeriod() %></td>
			</tr>
			
			<tr>
				<td width="900" align="center">
					<img alt="" src="img/<%=bean.getInfo() %>"width="450"></td>
			</tr>
		</table>	
			<br>
			<button onclick="history.back()"><font size="3" color="gray">Back</font></button>
	</center>
	
</body>
</html>