<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL</h1>
	
	<%
		pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE1");
		request.setAttribute("reqAttr1", "REQUEST ATTRIBUTE1");
		session.setAttribute("sesAttr1", "SESSION ATTRIBUTE1");
		application.setAttribute("applAttr1", "APPLICATION ATTRIBUTE1");
	%>
	<%-- <%=pageContext.getAttribute("pageAttr1") %> --%>
	<p>\${pageAttr1 } : ${pageAttr1 }</p>
	<p>\${reqAttr1 } : ${reqAttr1 }</p>
	<p>\${sesAttr1 } : ${sesAttr1 }</p>
	<p>\${applAttr1 } : ${applAttr1 }</p>
</body>
</html>