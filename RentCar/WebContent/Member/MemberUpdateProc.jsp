<%@page import="model.MemberDAO"%>
<%@page import="model.MemberBean"%>
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
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
	<%
		String id = request.getParameter("id");
		MemberDAO mdao = new MemberDAO();
		//스트링타입으로 저장되어있는 페스워드를 가져옴(데이터 베이스에거 가여존 pass 값이 저장)
		String pass = mdao.getPass(id);
		
		//수정하기위해서 작성한 패스워드 값과 기존 데이터 베이스에서 가져온 패스워드값을 비교
		if(mbean.getPass1().equals(pass)){ //기존 패스와 데이터베이스가 같다면 member 수정
			
			//MemberDao클래스의 회원수정 메소드 호출
			mdao.updateMember(mbean);
			response.sendRedirect("MemberList.jsp");
		}else{
	%>			
		<script type="text/javascript">
			alert("패스워드가 맞지 않습니다. 다시 확인해 주세요");
			history.go(-1);
		</script>
	<%	
		}
	%>
	
</body>
</html>