<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST(제어문-조건식)</title>
</head>
<body>
	<c:set var="id" value="admin"/>
	<c:if test="${id == 'admin'}">
		<h3>현재 로그인 된 계정은 <c:out value="${id}"/></h3>
	</c:if>
	<c:if test = "${id == 'member' }">
		현재 로그인 된 계정은 일반 계정입니다.
	</c:if>
	
	<c:set var="id">hds1234</c:set>
	<span>choose문 사용(else if, else를 사용하고자 할 때에는 choose 태그로 표현한다.)</span>
	<br>
	<c:choose>
		<c:when test="${id == 'admin' }">관리자</c:when>
		<c:when test="${id == 'member' }">회원</c:when>
		<c:otherwise>비회원</c:otherwise>
	</c:choose>
</body>
</html>

















