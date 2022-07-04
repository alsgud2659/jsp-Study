<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 예제 - 실시간 검색 순위</title>
</head>
<body>
	<table border="1">
		<tr>
			<td><h2>실시간 검색 순위</h2></td>
			<td style="width:200px;">키워드</td>
		</tr>
	</table>
</body>
<script>
	var xhr = new XMLHttpRequest();
	var obj;
	var datas = new Array();

	xhr.open("GET", "data.json");
	xhr.send();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				obj = JSON.parse(xhr.responseText);
				for(let i=0; i<obj.search_word.length; i++){
					datas[i] = "[" + obj.search_word[i].rank + "]" + obj.search_word[i].name;
				}
			}
		}
	}

	var i = 0;
	var interval = setInterval(function(){
		if(i == 4) {i = 0;}
		document.querySelector("tr").lastElementChild.innerHTML = datas[i];
		i++;
	}, 1000);
	
	setTimeout(function(){
		clearInterval(interval);
	}, 10000)

</script>
</html>