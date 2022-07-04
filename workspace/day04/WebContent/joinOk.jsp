<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	회원가입 시 사용자가 입력한 데이터를 전달받을 객체 
	파라미터의 이름과 필드명이 매핑되는 객체를 선언한다.
-->
<jsp:useBean class="com.dbms.mysql.task.GuestVO" id="guest"/>
<!-- 사용자가 입력한 정보를 DB로 접근하기 위한 객체 -->
<jsp:useBean class="com.dbms.mysql.task.GuestDAO" id="dao"/>
<!-- 
	위에서 객체화한 guest 객체에 전달받은 파라미터 전체를 mapping하여 set한다.
	setProperty에 *을 쓰면 파라미터명과 필드명이 일치했을 경우 자동으로 들어간다. 
	일치하는 것이 없다면 해당 객체의 필드에 초기값이 들어간다.
-->
<jsp:setProperty property="*" name="guest"/>
<%
//위에 <jsp:setProperty property="*" name="guest"/>가 밑에 있는 코드를 다 알아서 해준다. 
//그러므로 우리가 직접 객체에 파라미터를 넣어줄 필요가 없다.

/* 	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userAge = request.getParameter("userAge");
	String birth = request.getParameter("birth");
	
	
	guest.setUserId(userId);
	guest.setUserPw(userPw);
	guest.setUserAge(Integer.parseInt(userAge));
	guest.setBirth(birth); */
%>

<%
	dao.join(guest);
%>
<jsp:forward page="login.jsp"/>
