<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrs"%>
<%-- attribute directive에 명시하지 않은 attribute는 dynamic-attributes로 사용할 이름을 적음 --%>
<%-- dynamic-attributes는 명시하지 않은 attribute를 map형식으로 jsp에서 명시한 name과 value를 저장함--%>

<%@ attribute name = "attr1" %>

<div>
	attr1 : ${attr1 }
</div>

<div>
	attr2 : ${attrs.attr2 }
</div>

<div>
	other1 : ${attrs.other1 }
</div>