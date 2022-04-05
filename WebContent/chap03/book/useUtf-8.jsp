<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<%-- jsp파일은 utf-8로 작성. 응답 결과는 euc-kr로 나옴 --%>    
    
<%@ page import = "java.util.*" %>
<% Date now = new Date(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
</head>
<body>
현재시각 : <%= now %>
</body>
</html>