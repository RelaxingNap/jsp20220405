<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>
	<h1>중복되는 URL의 코드를 중복으로 사용안하려고 할 시</h1>
	<%--scope옵션으로 영역지정 가능. 하지만 되도록이면 좁은영역에서 사용하도록 할것 --%>
	<c:url value="https://www.naver.com/" var="naverUrl" scope="page"></c:url>
	
	<a href="https://www.naver.com">naver.com</a>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo sit.</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloremque.</p>
	
	<a href="https://www.naver.com">네이버</a>
	<a href="${naverUrl }"></a>
</body>
</html>