<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean class="com.member.beans.MemberVO" id="member"/>
<jsp:useBean class="com.member.beans.MemberDAO" id="dao"/>
<jsp:setProperty property="*" name="member"/>
<%
	dao.join(member);
	response.sendRedirect("login.jsp");
%>