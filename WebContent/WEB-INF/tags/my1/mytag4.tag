<%@ tag language="java" pageEncoding="UTF-8"%>

<%-- 꼭 넣어야 되는 attribute는 required를 true로 명시할것 --%>
<%@ attribute name = "num1" required = "true"%>
<%@ attribute name = "num2" required = "true"%>

<div>
	<p>${num1 } + ${num2 } = ${num1 + num2 }</p>
</div>