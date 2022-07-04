<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.member.beans.MemberDAO" id="dao"/>
<jsp:useBean class="com.member.beans.MemberVO" id="member"/>
<%
	//세션에 저장된 값(memberNum) 가져와서 전체 정보 조회
	member = dao.select((Integer)session.getAttribute("memberNum"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
</head>
<body>
	<div style="text-align:right">
		<%=member.getMemberId() %>님
		<span><a href="logout.jsp">[로그아웃]</a></span>
	</div>
	<div>
		<h3><%=member.getMemberName() %>님 환영합니다!</h3>
	</div>
</body>
</html>