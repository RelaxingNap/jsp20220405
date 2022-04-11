<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%-- session객체는 웹 브라우저의 여러요청을 처리하는 jsp페이지 사이에서 공유됨 --%>
<%-- 따라서 웹 브라우저와 1:1로 관련된 값을 저장할 때에는 쿠키대신 사용 --%>
<%
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME", "최범균");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>세션에 정보 저장</title>
</head>
<body>
	세션에 정보를 저장하였습니다.
	<!-- 세션은 쿠키보다 보안에서 앞섬 -->
	<!-- 쿠키는 http프로토콜을 사용하기 때문에 중간에 누군가가 쿠키의 값을 읽어올 수 있지만, 세션은 오직 서버에만 저장됨 -->
	<!-- 중요한 데이터를 저장하기에 알맞은 장소임 -->
	<!-- 하지만 세션은 여러 서버에서 공유할 수 없음 -->
</body>
</html>