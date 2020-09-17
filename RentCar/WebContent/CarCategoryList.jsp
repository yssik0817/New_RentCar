<%@page import="db.CarListBean"%>
<%@page import="java.util.Vector"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//카테고리 분류값을 받아옴.
		int category = Integer.parseInt(request.getParameter("category"));
		String temp="";
		if(category==1)temp="소형";
			else if(category==2)temp="중형";
			else if(category==3)temp="대형";
	%>
		<table width="1000">
			<tr height="60">
				<td align="center" colspan="3">
				<font size="6" color="#0076e0"><%=temp %> 자동차 </font></td>
			</tr>
	<%	
		RentcarDAO rdao = new RentcarDAO();
		Vector<CarListBean> v = rdao.getCategory(category);
		
		//tr를 3개씩 보여주고 다시 tr를 실행할 수 있도록 적용하는 변수 선언
		int j=0;
		
		for(int i=0; i<v.size(); i++){
			//벡터에 저장되어있는 빈클래스 추출
			CarListBean bean = v.get(i);
			if(j%3==0){
	%>
		
			<tr height ="220">
	<%		} 	%>
			<td width="333" align="center">
				<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo() %>">
					<img alt="" src="img/<%=bean.getImg() %>" width="300" height="200">
				</a>
				<p><font size="3" color="blue"><b>차량명 : <%=bean.getName() %></b></font></p>
	<%
			j=j+1; //j값을 증가하여 하나의 행에 총 3개의 차량 정보 보여주기
		}
	%>
	</table>
	<button onclick="history.back()"><font size="3" color="gray">Back</font></button>
</body>
</html>