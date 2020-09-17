<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그아웃 처리</title>
</head>
<body>
    <%
        session.invalidate(); // 모든세션정보 삭제
        //alert("로그인을 먼저 해주세요");
        response.sendRedirect("../RentcarMain.jsp"); // 메인 화면으로 다시 돌아간다.
    %>

</body>
</html>
