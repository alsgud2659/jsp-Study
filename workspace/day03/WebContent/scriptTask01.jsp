<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 실습1</title>
</head>
<body>
<!-- 3행 5열 표를 for문으로 제작하기 -->
<!-- 열 안에 내용은 몇 행 몇 열인지를 작성 -->
	<%!
		private final int ROW_COUNT = 3;
		private final int COLUMN_COUNT = 5;
	%>
	<table border="1">
	<%for(int i=0; i<ROW_COUNT; i++){ %>
		<tr>
		<%for(int j=0; j<COLUMN_COUNT; j++){ %>
			<td><%=i+1 %>행<%=j+1 %>열</td>
		<%} %>
		</tr>
	<%} %>
	</table>
</body>
</html>