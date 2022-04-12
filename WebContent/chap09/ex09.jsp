<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap09.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 지우기</h1>
	
	<%
		Cookies cookies = new Cookies(request);
		if(cookies.exists("cookie7")) {
			Cookie cookie = cookies.getCookie("cookie7");
			cookie.setMaxAge(0);	// 유효시간을 0으로 만들어서 쿠키를 삭제시킴
			response.addCookie(cookie);
		}
	
	%>
</body>
</html>