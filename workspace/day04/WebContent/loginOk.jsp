<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.dbms.mysql.task.GuestVO" id="guest"/>
<jsp:useBean class="com.dbms.mysql.task.GuestDAO" id="dao"/>
<jsp:setProperty property="*" name="guest"/>
<%
	String userId = dao.login(guest.getUserId(), guest.getUserPw());
	if(userId == null){ // 로그인 실패
%>
	<jsp:forward page="login.jsp?check=false"/>
<%
	}else{
%>
	<jsp:forward page="index.jsp">
		<jsp:param name="userId" value="<%=userId%>"/>
	</jsp:forward>
<%
	}
%>

