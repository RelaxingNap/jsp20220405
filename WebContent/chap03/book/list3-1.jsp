<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>html문서의 제목</title>
</head>
<body>
<%
	String bookTitle = "JSP 프로그래밍";
	String author = "최범균";
%>

<b><%= bookTitle %></b> (<%= author %>)입니다.

</body>
</html>