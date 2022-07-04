<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 request</title>
</head>
<body>
    <form action="objectOk.jsp" name="join" method="post">
        <fieldset>
            <legend>개인 정보</legend>
            <input type="text" name="name">
            <input type="date" name="birthday">
            <input type="button" value="확인">
        </fieldset>
    </form>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    const $name = $("input[name='name']");
    const $date = $("input[name='birthday']");

    $name.on('click', function(){
        $(this).removeAttr('style');
        $(this).removeAttr('placeholder');
    })

    $date.on('click', function(){
        $(this).removeAttr('style');
    })

    $("input[type='button']").on('click', function(){
        if(!$name.val()){
            $name.css('border-color', 'red');
            $name.attr('placeholder', '성함을 입력하세요');
            return;
        }
        if(!$date.val()){
            $date.css('border-color', 'red');
            return;
        }
        
        join.submit();
    })
</script>
</html>