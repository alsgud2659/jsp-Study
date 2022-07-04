<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="test2.jsp">
		<input type="text" name="name">
		<button>전송</button>
	</form>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		if(name != null){
			out.print(name);
			out.print(age);
		}
	%>
</body>
</html>