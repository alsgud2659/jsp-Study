<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<input type="hidden" name="check" value="<%=request.getParameter("check")%>">
    <form action="loginOk.jsp" method="post">
        <article>
            <div class="row">
                <div class="cell cell1">
                    <span>아이디</span>
                </div>
                <div class="cell cell2">
                    <input type="text" name="userId" autocomplete="off">
                </div>
            </div>
            <div class="row">
                <div class="cell cell1">
                    <span>패스워드</span>
                </div>
                <div class="cell cell2">
                    <input type="password" name="userPw">
                </div>
            </div>
        </article>
        <div class="btn">
            <button>로그인</button>
        </div>
    </form>
</body>
<script>
	var check = document.querySelector("input[type='hidden']").value;
	if(check == "false"){ //로그인 실패
		alert("로그인 실패");
		document.querySelector("input[type='hidden']").value = "";
	}
</script>
</html>









