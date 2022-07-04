<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET, POST 방식의 요청</title>
</head>
<body>
	<!-- <h1>GET 방식의 요청</h1>
	<button onclick="sendRequest()">GET 방식으로 요청 보내기!</button>
	<p id="text"></p> -->
	<h1>POST 방식의 요청</h1>
	<button onclick="sendRequest()">POST 방식으로 요청 보내기!</button>
	<p id="text"></p>
</body>
<script>
	function sendRequest(){
		var xhr = new XMLHttpRequest();
		
		/* xhr.open("GET", "requestAjax.jsp?city=Seoul&zipcode=45454", true);
		xhr.send(); */
		
		xhr.open("POST", "requestAjax.jsp");
		//전달해야 할 데이터의 타입을 헤더에 설정
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		//작성한 타입에 알맞는 데이터를 전달
		xhr.send("city=Seoul&zipcode=45454");
		
		//state가 변경될 때마다 실행
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
				//xhr.responseText : 결과 응답 값
				document.querySelector("p#text").innerHTML = xhr.responseText;
			}
		}
		
	}
</script>
</html>












