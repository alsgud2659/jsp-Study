<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 예제2</title>
</head>
<body>
	<h2><%=myMethod(0) %></h2>
	<h2><%=myMethod(0) %></h2>

	<%!
		public int myMethod(int count){
			return ++count;
		}
	%>
</body>
</html>