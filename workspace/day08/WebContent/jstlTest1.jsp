<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST(변수)</title>
</head>
<body>
	<h2>JSTL TEST(변수)</h2>
	<c:set var="name" value="홍길동" scope="page"/>
	<c:out value="${name}"/>
	<br>
	<!-- $를 출력하고 싶을 때에는 \$ 또는 &dollar;를 사용한다. -->
	\${name} ====> &dollar;{name}
	<hr>
	
	<c:set var="nation" scope="session">한국</c:set>
	<c:remove var="nation" scope="session"/>
	nation 삭제 후 값은 >> [<c:out value="${nation}" default="미국"/>] >> 변수 값이 삭제 됨
	<br>
	
	<c:set var="data1" value="10"/>
	<c:set var="data2" value="${20}"/>
	<c:set var="data3">30.5</c:set>
	합은 <%-- <c:out value="${data1 + data2 + data3}"/> --%>
	${data1 + data2 + data3}
</body>
</html>



