<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 실습2</title>
</head>
<body>
<!--
	아래의 모양과 같이 테이블 만들기(반복문 사용)
	
	□
	□□
	□□□
	□□□□
	□□□□□
	□□□□□
	□□□□
	□□□
	□□
	□
-->
	<table border="1">
		<%for(int i=0; i<5; i++){ %>
		<tr>
			<%for(int j=4-i; j<5; j++) {%>
			<td><%=i+1 %>행<%=i+2-(5-j) %>열</td>
			<%} %>
		</tr>
		<%} %>
		
		<%for(int i=0; i<5; i++){ %>
		<tr>
			<%for(int j=i; j<5; j++){ %>
			<td><%=i+6 %>행<%=j+1-i %>열</td>
			<%} %>
		</tr>
		<%} %>
	</table>
</body>
</html>











