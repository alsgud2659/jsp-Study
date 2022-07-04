<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 실습2</title>
</head>
<body>
<!-- 
	1단부터 100단가지 중 사용자에게 입력받은 단수로 구구단 출력하기
	입력받은 값이 정수인지 아닌지 판단, 값을 입력했는지 안했는지 판단.
	다른 페이지 이동 없이 현재 페이지에서만 기능 구현
	자바스크립트 사용가능
	구구단 출력은 JSTL로 구현
	입력은 form태그로 입력받는다.
 -->
	<form name="gugudan">
		<input type="text" name="number">
		<button type="button" onclick="send()">버튼</button>
	</form>
	
	<c:set var="dan">${param.number}</c:set>
	
	<c:if test="${not empty dan }">
		<c:choose>
			<c:when test="${dan >= 1 and dan <= 100 }">
				<c:forEach var="i" begin="1" end="9">
					<c:out value="${dan} * ${i} = ${dan * i}"/><br>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<h5>1~100단까지만 가능합니다.</h5>
			</c:otherwise>
		</c:choose>
	</c:if>
</body>
<script>
	function send(){
		var form = gugudan;
		var input = form.number.value;
		var check = input % 1 == 0;
		
		if(!check || !form.number.value){
			alert("다시 시도하세요.");
			return;
		}
		
		form.number.value = parseInt(input);
		form.submit();
	}
</script>
</html>


















