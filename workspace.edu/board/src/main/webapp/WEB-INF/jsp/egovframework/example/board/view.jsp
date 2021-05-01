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
	function list() {
		location.href = "<c:url value='/list.do'/>"; // http://127.0.0.1:8081/board/list.do
	}
</script>

</head>
<body>

	<div class="container">
		<h1>상세정보</h1>
		<div class="panel panel-default">

			<div class="panel-heading">
				<label for="">안녕하세요</label>
			</div>

			<div class="panel-body">
				<form class="form-horizontal" action="/action_page.php"
					method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="idx">게시물ID</label>
						<div class="col-sm-10 control-label" style="text-align: left">
							게시물아이디</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<div class="col-sm-10 control-label" style="text-align: left">
							제목임~~</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">등록자/등록일:</label>
						<div class="col-sm-10 control-label" style="text-align: left">
							등록자/등록일</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="contents">내용:</label>
						<div class="col-sm-10 control-label" style="text-align: left">
							내요오오오옹</div>
					</div>
				</form>
			</div>

			<div class="panel-footer">
				<button type="button" class="btn btn-default">등록</button>
				<button type="button" class="btn btn-default">삭제</button>
				<button type="button" class="btn btn-default" onclick="list()">목록</button>
			</div>
		</div>

		<div class="well well-sm">
			댓글/날짜<br/>내용</div>
		<div class="well well-lg">
		
			<form class="form-horizontal" action="/reply.do" method="post">
				<div class="form-group">
					<label class="control-label col-sm-2" for="writer">작성자/작성일:</label>
					<div class="col-sm-10 control-label" style="float:left">
						<input type="writer" class="form-control" id="writer" placeholder="작성자 입력하세요"
						style="float:left; width:20%" maxlength="15">
						<input type="indate" class="form-control" id="indate" placeholder="작성일 입력하세요"
						style="float:left; width:20%" maxlength="15">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="reply">댓글:</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" id="reply" name="reply" maxlength="300"></textarea>
					</div>
				</div>
				
						<button type="submit" class="btn btn-default">댓글작성</button>
						<p><br/>## 댓글은 수정이나 삭제를 할 수 없습니다.</p> 
					</div>
				</div>
			</form>

		</div>
	</div>
</body>
</html>