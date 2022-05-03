<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/board/list" var="prevList">
	<c:param name="page" value="${prevPage }"></c:param>
</c:url>

<c:url value="/board/list" var="nextList">
	<c:param name="page" value="${nextPage }"></c:param>
</c:url>

<nav>
	<ul class="pagination justify-content-center">
		<c:if test="${prevPage >= 1 }">
			<li class="page-item">

				<a href="${prevList }" class="page-link">
					<span>&laquo;</span>
				</a>
			</li>
		</c:if>
		<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
			<c:url value="/board/list" var="presentPage">
				<c:param name="page" value="${pageNum }"></c:param>
			</c:url>
			<li class="page-item ${currentPage == pageNum ? 'active' : '' }">
				<a href="${presentPage }" class="page-link">${pageNum }</a>
			</li>
		</c:forEach>
		<c:if test="${endPage != lastPage }">
			<li class="page-item">
				<a href="${nextList }" class="page-link">
					<span>&raquo;</span>
				</a>
			</li>
		</c:if>
	</ul>
</nav>
