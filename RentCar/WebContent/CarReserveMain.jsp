<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.Vector"%>
	<%@page import="db.RentcarDAO"%>
	<%@page import="db.CarListBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/Tr/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>렌트카 메인</title>
</head>

<body>
<center>
		<!-- 데이터베이스에 연결하여 최신순 자동차 3대만 뿌려주는 데이터를 가져옴 -->
		<%
			RentcarDAO rdao = new RentcarDAO();
			//백터를 이용하여 자동차를 저장
			Vector<CarListBean> v = rdao.getSelectCar();
		%>
		<table width="1000">
			<tr height="60">
				<td align="center" colspan="3">
				<font size="6" color="#0076e0 ">최신 자동차 </font></td>
			</tr>
			<tr height="240">
				<%
					for (int i=0; i<v.size(); i++) { 
						/* 불러온 3개만 출력하기 */
						CarListBean bean = v.get(i);
				%>
				<td width="333" align="center">
				<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
					<img alt="" src="img/<%=bean.getImg()%>" width="300" height="220">
				</a>
				<p>차량명 : <%=bean.getName()%></p></td>
				<%
					}
				%>
		</table>
		<hr color="skyblue" size="3">
	
			<br>
		<form action="RentcarMain.jsp?center=CarCategoryList.jsp" method="post">
			<font size="3" color="blue"> 
			<b>차량 검색하기</b>
			</font>&nbsp;
			<select name="category">
				<option value="1">소형</option>
				<option value="2">중형</option>
				<option value="3">대형</option>
			</select>&nbsp;&nbsp; 
			<input type="submit" value="검색">&nbsp;&nbsp;
		</form>
			<br>
			<button	onclick="location.href='RentcarMain.jsp?center=CarAllList.jsp'">전체 검색</button>
</center>
</body>
</html>