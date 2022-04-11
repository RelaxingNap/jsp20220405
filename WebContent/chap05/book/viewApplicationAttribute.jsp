<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<title>기본객체 속성보기</title>
</head>
<body>
	<%
		Enumeration<String> attrEnum = application.getAttributeNames();
		while(attrEnum.hasMoreElements()){
			String name = attrEnum.nextElement();
			Object value = application.getAttribute(name);
	%>
		application 속성 : <b><%= name %></b> = <b><%= value %></b>	<br />
	<%
		}
	%>
	<!-- application속성은 서버를 교체하면 속성을 계속 사용할 수 없고, 버전이 다르면 속성이 다를 수 있다. -->
	<!-- 따라서 특정 컨테이너에서만 제공하는 속성은 사용하지 않는것이 좋다. -->
</body>
</html>