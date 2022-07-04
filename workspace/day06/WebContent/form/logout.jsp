<%
	session.invalidate(); //세션에 있는 데이터 전체 삭제
	//session.removeAttribute("memberNum"); //특정 데이터 삭제 
	response.sendRedirect("login.jsp");
%>