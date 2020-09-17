<%@page import="db.EventBean"%>
<%@page import="db.EventDAO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/Tr/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 이벤트는 무엇?</title>
</head>
<body>
<center>
<table>
	<%
		EventDAO edao = new EventDAO();
		Vector<EventBean> v = edao.getAllEvent();
		
		int j=0;
		for(int i=0; i<v.size(); i++){
			//벡터에 저장되어있는 빈클래스 추출
			EventBean bean = v.get(i);
	%>
		
		<tr height ="220">
			<td width="333" align="center">
				<hr color="skyblue" size="3">
<%-- 				<p><font size="3" color="blue"><b>이벤트명 : <%=bean.getName() %></b></font></p> --%>
				<a href="RentcarMain.jsp?center=Event/EventInfo.jsp?no=<%=bean.getNo() %>">
					<img alt="" src="img/<%=bean.getImg() %>" width="815" height="300">
				</a>
	
	<%
		}
	%>
				<hr color="skyblue" size="3">
			</td>		
		</tr>	
	</table>
</center>	
</body>
</html>