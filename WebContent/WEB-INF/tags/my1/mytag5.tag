<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name = "num1" %>
<%@ attribute name = "num2" %>
<%@ attribute name = "operator" %>

<%-- tag안에서 다른 tag사용하겠다고 선언시 사용가능 --%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test = "${operator == '+' }">
		<p>${num1 + num2 }</p>
	</c:when>
	<c:when test = "${operator == '-' }">
		<p>${num1 - num2 }</p>
	</c:when>
	<c:when test = "${operator == '*' }">
		<p>${num1 * num2 }</p>
	</c:when>
	<c:when test = "${operator == '/' }">
		<p>${num1 / num2 }</p>
	</c:when>
	<c:otherwise>
		<p>적절한 연산자를 입력해 주세요</p>
	</c:otherwise>
</c:choose>