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
	
	<!-- div>span>i.fa-brands.fa-apple^a*3 -->
	<!-- <div>
		<span>
			<i class="fa-brands fa-apple"></i>
		</span>
		<a href="ex01.jsp">페이지1</a>
		<a href="ex02.jsp">페이지2</a>
		<a href="#">페이지3</a>
	</div> -->
	<%-- include directive --%>
	<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
	<%@ include file = "module/header01.jsp" %>
	<%-- 다른 파일의 내용을 현재위치에 삽입(복붙)후 java로 변환 --%>
	<!-- div>(h1>lorem1^p>lorem)*3 -->
	<div>
		<h1>Lorem.</h1>
	 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia in minima nisi nam dicta esse inventore maiores sapiente quaerat molestiae aperiam ab ad? Laboriosam cupiditate hic explicabo voluptate praesentium voluptatibus.</p>
	 	<h1>Natus!</h1>
	 	<p>Iusto odio blanditiis natus commodi quis aliquid dignissimos ratione quaerat ipsum ducimus adipisci voluptatum quisquam tempora facilis quidem ut eius maxime sed sint veniam at reiciendis quam facere sequi incidunt!</p>
	 	<h1>Distinctio.</h1>
	 	<p>Modi ducimus consequuntur fuga numquam nulla in rerum alias rem delectus eos pariatur magni enim nisi est sequi? Quaerat est aliquid ut ullam illum pariatur amet nesciunt blanditiis aperiam dolor.</p>
	</div>

</body>
</html>