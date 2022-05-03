<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "my" tagdir="/WEB-INF/tags/app01" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<script>
	$(function(){
		$("#insert-button").click(function(e){
			e.preventDefault();
			
			if(confirm("작성을 완료하시겠습니까?")){
				$("#form1").submit();
			}
		});
	});

</script>
<title>Insert title here</title>
</head>
<body>

	<my:navBar current="insert"/>
	<!-- .container>.row>.col>h1{글 작성} -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>글 작성</h1>

				<form id="form1" action="${appRoot }/board/insert" method="post">
					<div>
						<label class="form-label" for="input1">제목</label>
						<input class="form-control" type="text" name="title" required id="input1" />
					</div>
					<div>
						<label class="form-label" for="textarea1">본문</label>
						<textarea class="form-control" name="body" id="textarea1" cols="30" rows="10"></textarea>
					</div>
					
					<!-- button.btn.btn-primary{작성} -->
					<button id="insert-button" class="btn btn-primary">작성</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>