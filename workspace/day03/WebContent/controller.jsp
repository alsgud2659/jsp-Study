<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		String site = request.getParameter("site");
		String viewPageURL = null;
		switch(site){
		case "naver":
			viewPageURL = "forwardNaver.jsp";
			break;
		case "daum":
			viewPageURL = "forwardDaum.jsp";
			break;
		case "google":
			viewPageURL = "forwardGoogle.jsp";
			break;
		}
	%>
	<jsp:forward page="<%=viewPageURL %>"/>
</body>
</html>