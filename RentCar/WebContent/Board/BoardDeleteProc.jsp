<%@page import="model.BoardDAO"%>
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
	String pass = request.getParameter("password");
	int num = Integer.parseInt(request.getParameter("num"));
	
	//데이터베이스 연결
	BoardDAO bdao = new BoardDAO();
	String password = bdao.getPass(num);
	
	//기존 패스워드 값과 delete form 에서 입력한 패스워드를 비교
	if(pass.equals(password)){
		
		//패스워드가 둘 다 같다면
		bdao.deleteBoard(num); 
		response.sendRedirect("BoardList.jsp");
	} else{
%>
	<script>
		alert("패스워드가 틀려서 삭제할 수 없습니다. 패스워드를 확인해주세요.");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>