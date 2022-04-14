<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<a href="ex13.jsp">13파일로 이동</a> <br />
	<a href="/jsp20220405/chap11/05el-object/ex13.jsp">13번 파일로 이동(절대경로 1)</a> <br />
	<a href="<%= request.getContextPath() %>/chap11/05el-object/ex13.jsp">13번 파일로 이동(절대경로 2)</a> <br />
	<a href="${pageContext.request.contextPath }/chap11/05el-object/ex13.jsp">13번 파일로 이동(절대경로 3)</a> <br />
	
</body>
</html>