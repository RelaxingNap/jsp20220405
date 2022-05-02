<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<script>

// reply-edit-toggle 버튼 클릭시 댓글 보여주는 div 숨기고, 
// 수정 form 보여주기
	$(function(){
		$(".reply-edit-toggle-button").click(function(){
			
			const replyId = $(this).attr("data-reply-id");
			const displayDivId = "#replyDisplayContainer" + replyId;
			const editFormId = "#replyEditFormContainer" + replyId;
			
			$(displayDivId).hide();
			$(editFormId).show();
		});
		
		$(".reply-delete-button").click(function() {
			const replyId = $(this).attr("data-reply-id");
			const message = "댓글을 삭제하시겠습니까? ";
			
			if(confirm(message)) {
				$("#replyDeleteInput1").val(replyId); // input element의 value를 세팅
				$("#replyDeleteForm1").submit();
			}
		});
		
	});
</script>


<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>글 작성</h1>
				
					<div>
						<label class="form-label" for="input1">제목</label>
						<input class="form-control" type="text" name="title" required id="input1" value="${board.title }" readonly/>
					</div>
					<div>
						<label class="form-label" for="textarea1">본문</label>
						<textarea class="form-control" name="body" id="textarea1" cols="30" rows="10" readonly>${board.body }</textarea>
					</div>
					
					<div>
						<label for="input2" class="form-label">작성일시</label>
						<input class="form-control" type="datetime-local" value="${board.inserted }" readonly/>
					</div>
				
			</div>
		</div>
	</div>
	
	<%-- 댓글 --%>
	<!-- .container.mt-3>.row>.col>form -->
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<form action="${appRoot }/reply/insert" method="post">
					<!-- .input-group -->
					<div class="input-group">
					<input type="hidden" name="boardId" value="${board.id }" />
					<input class="form-control" type="text" name="replyContent" required />
					<button class="btn btn-outline-secondary"><i class="fa-solid fa-comment dots"></i></button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<%-- 댓글 목록 --%>
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<ul class="list-group">
					<c:forEach items="${replyList }" var="reply">
						<li class="list-group-item">
							<div id="replyDisplayContainer${reply.id }">
								<div class="fw-bold">
									<i class="fa-solid fa-comment"></i>
									${reply.prettyInserted }
								</div>
								${reply.content }
								<button class="reply-edit-toggle-button" id="replyEditToggleButton${reply.id }" data-reply-id="${reply.id }">
									<i class="fa-solid fa-pen-to-square"></i>
								</button>
								<button class="reply-delete-button" data-reply-id="${reply.id }">
									<i class="fa-solid fa-trash-can"></i>
								</button>
								
							</div>

							<div id="replyEditFormContainer${reply.id }" style="display: none;">
								<form action="${appRoot }/reply/modify" method="post">
									<div class="input-group">
										<input type="hidden" name="boardId" value="${reply.boardId }" />
										<input type="hidden" name="replyId" value="${reply.id }" />
										<input class="form-control" type="text" name="replyContent" value="${reply.content }" required />
										<button class="btn btn-outline-secondary"><i class="fa-solid fa-comment dots"></i></button>
										
									</div>
								</form>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<%-- reply 삭제 form --%>
	<div class="d-none">
		<form id="replyDeleteForm1" action="${appRoot }/reply/delete" method="post">
			<input type="hidden" name="boardId" value="${board.id }" />
			<input id="replyDeleteInput1" type="text" name="id" />		
		</form>
	</div>

</body>
</html>