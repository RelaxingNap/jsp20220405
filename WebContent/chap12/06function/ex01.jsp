<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>함수 사용</title>
</head>
<body>
	<h1>el function(책 333쪽)</h1>
	<%-- <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %> 선언 후 사용가능--%>
	
	<%-- 영역에서 사용할 변수 설정(기본값 : pageContext) --%>
	<c:set var="str1" value="Functions <태그>를 사용합니다."></c:set>
	<c:set var="str2" value="사용"></c:set>
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10"></c:set>
	
	length(str1) = "${fn:length(str1) }" <br />
	toUpperCase(str1) = "${fn:toUpperCase(str1) }" <br />
	toLowerCase(str1) = "${fn:toLowerCase(str1) }" <br />
	
	substring(str1, 3, 6) = "${fn:substring(str1, 3, 6) }" <br />
	substringAfter(str1, str2) = "${fn:substringAfter(str1, str2) }" <br />
	substringBefore(str1, str2) = "${fn:substringBefore(str1, str2) }" <br />
	trim(str1) = "${fn:trim(str1) }" <br />
</body>
</html>