<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%-- <%request.setCharacterEncoding("UTF-8"); %>
<%=request.getParameter("name") %> --%>

<%-- 	<form action="test.jsp" method="post">
		<input type="text" name="name" value="<%=request.getParameter("name")%>">
		<button>전송</button>	
	</form> --%>
<%
	response.sendRedirect("test.jsp?name=" + URLEncoder.encode(request.getParameter("name"), "UTF-8") + "&age=30"); 
%>
</body>
</html>