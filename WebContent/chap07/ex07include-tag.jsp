<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- include standard action tag(표준액션태그) --%>
	<%-- page 속성에 포함될 페이지 경로 작성 --%>	
	<jsp:include page="module/header02.jsp"></jsp:include>
	<!-- include메소드 안에서 request와 response객체를 매개변수로 받기 때문에 같이 사용가능 -->
	
	<!-- div>span>i.fa-brands.fa-amazon^a*3^div>(h1>lorem1^p>lorem) -->
	
	<div>
		<h1>Lorem.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis distinctio autem nulla vel iure optio voluptas quo laboriosam quidem ipsam! Excepturi dolorem exercitationem ipsa voluptas quo ullam rerum impedit id.</p>
	</div>
</body>
</html>