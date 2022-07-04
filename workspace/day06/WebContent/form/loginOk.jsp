<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean class="com.member.beans.MemberVO" id="member"/>
<jsp:useBean class="com.member.beans.MemberDAO" id="dao"/>
<jsp:setProperty property="*" name="member"/>
<%
	int memberNum = dao.login(member.getMemberId(), member.getMemberPw());
	if(memberNum == 0){
%>
	<script>
		alert("로그인 실패");
		location.href = "login.jsp";
	</script>
<%
	}else{
		session.setAttribute("memberNum", memberNum);
		response.sendRedirect("index.jsp");
	}
%>