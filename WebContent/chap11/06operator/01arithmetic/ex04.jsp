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
	<h1>산술 연산 시 attribute가 없으면 0으로 취급</h1>
	
	<%
		pageContext.setAttribute("attr1", 3);
	%>
	
	<p>${attr1 }, ${attr2 }</p>
	<p>${attr1 + attr2 }</p>
	<p>${attr1 - attr2 }</p>
	<p>${attr1 * attr2 }</p>
	<p>${attr1 / attr2 }</p> <%-- 값이 무한대라서 infinity출력 --%>
	<%-- <p>${attr1 % attr2 }</p> mod연산은 error발생--%>
</body>
</html>