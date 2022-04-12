<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0) {
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("name")){
				Cookie tmpCookie = new Cookie("name","");
				cookie.setMaxAge(0);
				response.addCookie(tmpCookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	name 쿠키를 삭제합니다.
</body>
</html>