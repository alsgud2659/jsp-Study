<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.dbms.mysql.task.GuestDAO" id="dao"/>
<%-- <%response.sendRedirect("join.jsp?check="+dao.checkId(request.getParameter("userId"))); %> --%>
<%
	if(dao.checkId(request.getParameter("userId"))){
		out.print("중복된 아이디입니다.");
	}else{
		out.print("사용 가능한 아이디입니다.");
	}
%>
