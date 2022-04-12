<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키값 변경</h1>
	<!-- 쿠키 변경방법은 request객체에서 쿠키들을 받아서 for문으로 탐색해서 찾아낸 후 변경해야함 -->
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("cookie4")) {
				cookie.setValue("new-value4");
				response.addCookie(cookie);
			}
		}
	%>
	
	<a href="ex05.jsp">쿠키값 보기</a>
</body>
</html>