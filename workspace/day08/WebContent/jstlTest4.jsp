<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST(제어문 - 반복문)</title>
</head>
<body>
	forEach 연습 결과
	<!-- forEach에서 step은 양수만 가능하다 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:out value="${i}"/> &nbsp;&nbsp;
	</c:forEach>
	<hr>
	<!-- varStatus에 원하는 객체명을 담은 뒤, 반복문 안에서 다양한 프로퍼티에 접근할 수 있다. -->
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="stat">
		index : <c:out value="${stat.index}"/>
		count : <c:out value="${stat.count}"/>
		begin : <c:out value="${stat.begin}"/>
		end : <c:out value="${stat.end}"/>
		step : <c:out value="${stat.step}"/>
		first : <c:out value="${stat.first}"/>
		last : <c:out value="${stat.last}"/>
		<hr>
	</c:forEach>
</body>
</html>