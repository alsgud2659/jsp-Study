<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류</title>
<style>
    h1 {
        color:red;
    }
</style>
</head>
<body>
    <h1>경고! 잘못된 접근입니다.</h1>
    <h2><%=new Date()%></h2>
</body>
</html>