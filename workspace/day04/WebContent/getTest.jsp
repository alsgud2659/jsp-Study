<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 방식의 요청</title>
</head>
<body>
	<%
		String city = request.getParameter("city");
		String zipcode = request.getParameter("zipcode");
		
		if(city == null || zipcode == null){
			response.sendRedirect("postTest.jsp");
		}
	%>
	<h1>GET 방식의 요청</h1>
	<form>
		<input type="text" value="Seoul" name="city" readonly>
		<input type="text" value="15588" name="zipcode" readonly>
		<button>GET방식으로 요청 보내기!</button>
	</form>
	<p>
		<%=city %> <%=zipcode %>
	</p>
</body>
</html>