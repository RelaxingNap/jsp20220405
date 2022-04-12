<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60 * 60); //유효시간 세팅 (시간 단위 : 초)
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>쿠키 유효시간 설정</title>
</head>
<body>
	유효시간이 1시간인 oneh 쿠키 생성
	<!-- 아이디 기억하기 기능을 구현할 때 쿠키를 사용 -->
	<!-- 쿠키의 유효시간을 길게 잡아서 생성하면 브라우저가 닫혀도 다음 웹 브라우저를 실행해도 아이디를 저장하고 있는 쿠키를 사용 가능-->
	<!-- 비슷한 방식으로 로그인 정보를 쿠키에 보관하면 자동로그인 기능을 구현 할 수 있다. -->
</body>
</html>