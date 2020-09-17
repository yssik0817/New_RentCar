<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
	<h2>회원가입</h2>
	<form action="Member/MemberJoinProc.jsp" method="post">
	<table width="500" border="1">
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">아이디</td>
			<td width="350" align="center" bgcolor="#edf4ff" >
			<input type="text" name="id" size="40" placeholder="아이디를 입력하시오."></td>
		</tr>	
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">패스워드</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="password" name="pass1" size="40" placeholder="영문과 숫자 조합"></td>
		</tr>	
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">패스워드 확인</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="password" name="pass2" size="40"></td>
		</tr>	
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">이메일</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="email" name="email" size="40"></td>
		</tr>
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">전화번호</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="tel" name="tel" size="tel"></td>
		</tr>
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">취미</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="checkbox" name="hobby" value="캠핑">캠핑 &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="등산">등산 &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="자전거">자전거 &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="영화">영화 &nbsp;&nbsp;
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">직업</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<select name="job">
			<option value="교사">교사</option> 
			<option value="의사">의사</option>
			<option value="검사">검사</option>
			<option value="변호사">변호사</option>
			</select>	
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">나이</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<input type="radio" name="age" value="10">10 &nbsp;&nbsp;
			<input type="radio" name="age" value="20">20 &nbsp;&nbsp;
			<input type="radio" name="age" value="30">30 &nbsp;&nbsp;
			<input type="radio" name="age" value="40">40 &nbsp;&nbsp;
			</td>
		</tr>
		<tr height="50">
			<td width="150" align="center" bgcolor="#89bfff">하고싶은 말</td>
			<td width="350" align="center" bgcolor="#edf4ff">
			<textarea rows="5" cols="40" name="info"></textarea></td>
		</tr>
		<tr height="50">
			<td colspan="2" align="center" bgcolor="#f0f8ff" >
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</tr>
	</table>
	
	</form>
</body>
</html>