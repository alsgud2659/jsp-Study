<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%-- <input type="hidden" name="check" value="<%=request.getParameter("check")%>"> --%>
	<form action="joinOk.jsp" name="joinForm">
 		아이디 : <input type="text" name="userId">
 		<!-- <input type="button" value="중복검사" onclick="sendRequest()"> -->
 		<p id="result"></p>
 		<input type="button" value="완료" onclick="send()">
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

/* 	if($("input[name='check']").val() != "null"){
		if($("input[name='check']").val() == "true"){
			$("p#result").text("중복된 아이디입니다.");
		}else{
			$("p#result").text("사용가능한 아이디입니다.");
		}
	} */
	
	/* $("input[name='userId']").on("blur", function(){
		sendRequest();
	}) */
	
	$("input[name='userId']").on("keyup", function(){
		sendRequest();
	})
	
	function sendRequest(){
		var xhr = new XMLHttpRequest();
		
		xhr.open("GET", "joinOk.jsp?userId=" + joinForm.userId.value);
		xhr.send();
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && xhr.status == 200){
				$("p#result").text(xhr.responseText);
			}
		}
		
	}
	
	function send(){
		if(!$(joinForm.userId).val()){
			alert("아이디를 입력해주세요.");
			return;
		}
		joinForm.submit();
	}
</script>
</html>