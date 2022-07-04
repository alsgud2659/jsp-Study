<%@page import="com.dbms.mysql.beans.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.dbms.mysql.beans.MemberDAO" id="dao"/>
<jsp:useBean class="com.dbms.mysql.beans.MemberVO" id="vo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈 예제</title>
</head>
<body>
	<!--  
		HTML 주석은 컴파일을 막지 못하고 보여지는 부분만 처리해준다.
	-->
	<%--
		JSP 주석은 컴파일도 막아준다.
	 --%>

<%-- 	<jsp:setProperty property="memberName" name="vo" value="한동석"/>
	<jsp:setProperty property="memberBirth" name="vo" value="2020-12-04"/> --%>
	<%
		List<MemberVO> members = dao.getInfo("배상혁");
	%>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>생일</th>
		</tr>
		<%for(int i=0; i<members.size(); i++){ %>
		<tr>
			<td><%=members.get(i).getMemberName() %></td>
			<td><%=members.get(i).getMemberBirth() %></td>
<%-- 			
			<td><jsp:getProperty property="memberName" name="vo"/></td>
			<td><jsp:getProperty property="memberBirth" name="vo"/></td> 
--%>
		</tr>
		<%} %>
	</table>
</body>
</html>