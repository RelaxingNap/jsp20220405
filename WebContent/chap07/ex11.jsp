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

	<p>ex11.jsp</p>
	<!-- 데이터 전달 시 request 파라미터 사용 -->
	
	<!-- 쿼리스트링으로 전달하는 방법(비추천) -->
	<%-- <jsp:include page="ex12.jsp?name=hello world + 한글&age=30"></jsp:include> --%>
	<!-- 우리가 의도된대로 값이 전달되지 않을 수 있음 --> <!-- 인코딩을 거쳐야 될 수 있음 -->
	
	<!-- jsp:param 표준액션태그 사용방법(추천) -->
	<jsp:include page="ex12.jsp">
		<jsp:param name="name" value="hello world+한글" />
		<jsp:param name="age" value="30" />
	</jsp:include>
	<!-- request의 parameter로 담긴다음에 넘김 -->
	<!-- 특별히 인코딩해줄 필요 없음 -->
</body>
</html>