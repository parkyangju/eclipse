<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>" /></script>
<script type="text/javascript">
	function cancel() {
		location.href = "<c:url value='/list.do'/>"; // http://127.0.0.1:8081/board/list.do
	}
	function add(){
		if($("#title").val()==""){
			alert("제목을 입력하세요");
			$("#title").focus();
			return;
		}
		
		if(!confirm("등록하시겠습니까?")){
			return;
		}
		document.form1.action="<c:url value='/mgmt.do'/>"; //회원등록화면(get), 회원등록 동시에(post)
		document.form1.submit();
	}
</script>

</head>
<body>

	<div class="container">
		<h1>등록/수정화면</h1>
		<div class="panel panel-default">

			<div class="panel-heading">
				<label for="">안녕하세요</label>
			</div>

			<div class="panel-body">
				<form class="form1" name="form1" class="form-horizontal" action="" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="idx">게시물ID</label>  
						<div class="col-sm-10">
							<input type="text" class="form-control" id="idx"
								placeholder="자동발생" name="idx" style = "width:15%">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="title"
								placeholder="제목을 입력하세요" name="title" maxlength="100">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">등록자/등록일</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="writer"
								placeholder="등록자를 입력하세요" name="writer" maxlength="15" style="float:left; width :20%">
							<input type="text" class="form-control" id="indate"
								placeholder="등록일을 입력하세요" name="indate" maxlength="15" style="float:left; width :20%" value="${strToday}">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="contents">내용:</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="5" id="contents" name="contents" maxlength="1000"></textarea>
						</div>
					</div>
				</form>
			</div>

			<div class="panel-footer">
				<button type="button" class="btn btn-default" onclick="add()">등록</button>
				<button type="button" class="btn btn-default" >수정</button>
				<button type="button" class="btn btn-default" onclick="cancel()">취소</button>
			</div>

		</div>
	</div>
</body>
</html>