<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 태그 예제</title>
</head>
<body>
	<!-- 헤더 영역 -->
	<%@ include file="header.jsp" %>
	<h4>---------------------------현재 페이지 영역---------------------------</h4>
	<!-- 푸터 영역 -->
	<%@ include file="footer.jsp" %>
</body>
</html>