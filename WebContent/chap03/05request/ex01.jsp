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
	<h1>request : javax.servlet.http.HttpServletRequest</h1>
	<p>client -> server : request </p>
	<p>	server에서 socket으로 온것을 InputStream으로 꺼내서 httpServeltRequest에 담아놓음 </p>
	<p>server -> client : response </p>
	
	<h3>method : <%= request.getMethod() %></h3>
	<h3>path : <%= request.getRequestURI() %></h3>
	<h3>host : <%= request.getServerName() %></h3>
	<h3>port : <%= request.getServerPort() %></h3>
	<h3>URL : <%= request.getRequestURL() %></h3>
	<h3>Accept Header : <%= request.getHeader("Accept") %></h3>
	<h3>query string : <%= request.getQueryString() %></h3>
	
</body>
</html>