<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST(출력의 종류)</title>
</head>
<body>
	${"<script>alert('안녕');</script>"}
	<c:out value="<script>alert('안녕');</script>"/>
	<c:out value="<script>alert('안녕');</script>" escapeXml="false"/>
</body>
</html>