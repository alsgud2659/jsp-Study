<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>
    <form action="joinOk.jsp" method="post">
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
            <div class="row">
                <div class="cell cell1">
                    <span>나이</span>
                </div>
                <div class="cell cell2">
                    <input type="text" name="userAge">
                </div>
            </div>
            <div class="row">
                <div class="cell cell1">
                    <span>생일</span>
                </div>
                <div class="cell cell2">
                    <input type="date" name="birth">
                </div>
            </div>
        </article>
        <div class="btn">
            <button>완료</button>
        </div>
    </form>
</body>
</html>