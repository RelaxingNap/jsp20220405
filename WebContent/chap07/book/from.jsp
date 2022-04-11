<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%-- <jsp:forward> 액션 태그를 실행하면 생성했던 출력결과는 모두 제거 된다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>from.jsp의 제목</title>
</head>
<body>
	이 페이지는 from.jsp가 생성한 것입니다.
	
	<jsp:forward page="to.jsp"></jsp:forward>
	<!-- 실행 시 이동한 to.jsp가 생성한 결과가 웹 브라우저에 출력된다. -->
	<!-- 실행 시 웹 브라우저의 주소는 from.jsp그대로이다. -->
	<!-- forward실행하기 전에 출력버퍼에 저장한 내용을 비우기 때문에, 이전에 저장된 내용은 웹 브라우저에 전송되지 않음 -->
	<!-- 또, forward태그 뒤에 위치한 코드는 실행조차 되지 않는다. -->
	<!-- forward태그를 올바르게 동작하기 위해서는 액션태그 실행전 웹 브라우저에 데이터가 전송되면 안됨. -->
	<!-- buffer속성을 none로 설정하여 buffer를 사용하지 않는 경우에도 액션태그를 제대로 사용할 수 없음. -->
</body>
</html>