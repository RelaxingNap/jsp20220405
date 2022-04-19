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
	<form>
		구구단 : <input type="number" name="dan" />
		<input type="submit" value="출력" />
	</form>
	
	<c:if test="${(param.dan >= 2) && (param.dan <= 9) }" var="test">
		<c:forEach begin="1" end="9" var="i">
			<p>${param.dan } * ${i } = ${param.dan * i }</p>
		</c:forEach>
	</c:if>
	
	<c:if test="${not test }">
		<h1 class="text-warning">적절한 단을 입력해 주세요</h1>
	</c:if>
	
	
	<%-- 입력 dan 파라미터 사용해서 구구단 출력 --%>
	<%-- dan이 2 ~ 9 아니면 "적절한 단을 입력해 주세요" 출력 --%>
</body>
</html>