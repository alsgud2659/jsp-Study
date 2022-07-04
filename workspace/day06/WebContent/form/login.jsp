<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
<body>
    <form action="loginOk.jsp" method="post" name="loginForm">
        <table border="1" style="text-align: center; margin:0 auto;">
            <tr>
                <th>아이디</th>
                <td><input type="text" name="memberId"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="memberPw"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" value="로그인" onclick="send()">
                </td>
            </tr>
        </table>
    </form>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
<script>
    function send(){
        var form = loginForm;
        if(!form.memberId.value){
            alert("아이디를 입력해주세요.");
            form.memberId.focus();
            return;
        }
        if(!form.memberPw.value){
            alert("패스워드를 입력해주세요.");
            form.memberPw.focus();
            return;
        }

        form.memberPw.value = btoa(form.memberPw.value);

        form.submit();
    }
</script>
</html>