<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- request객체 인코딩 설정, 전달할 데이터의 한글이 깨질 때 사용한다. -->
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션 태그</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:forward page="paramResult.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value="관리자" name="name"/>
	</jsp:forward>
</body>
</html>