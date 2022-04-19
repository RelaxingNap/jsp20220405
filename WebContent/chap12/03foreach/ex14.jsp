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

<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="10" end="13" var="i" varStatus="status">
		<p>begin, ${status.begin }</p>
		<p>end, ${status.end }</p>
		<p>count, ${status.count }</p>
		<p>index, ${status.index }</p>
		<p>first? ${status.first }</p>
		<p>last? ${status.last }</p>
		<%-- var Status : LoopTagStatue 타입의 객체 --%>
		<%-- 몇번째 loop인지, 몇번 index를 사용하는지 상태정보를 알 수 있는 attribute --%>
	</c:forEach>
</body>
</html>