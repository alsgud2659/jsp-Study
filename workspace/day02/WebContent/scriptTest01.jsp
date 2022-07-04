<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 예제1</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%!
		int count = 3;
	
		String makeItBeLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<%
		for(int i=0; i<count; i++){
	%>
		<!-- 이 영역은 3번 반복된다. -->
		<h3>Java Server Pages <%=i+1%>.</h3>
	<%
		}
	%>
		<hr>
		<!-- 표현문은 서블릿의 out.print()메소드의 매개변수로 전달된다. -->
		<h3><%=makeItBeLower("Hello World!")%></h3>
</body>
</html>











