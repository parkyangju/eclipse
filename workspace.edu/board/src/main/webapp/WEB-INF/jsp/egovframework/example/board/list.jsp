<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>전자정부 표준프레임워크</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>" /></script>
<script type="text/javascript">
	function add() {
		location.href = "<c:url value='/mgmt.do'/>"; // http://127.0.0.1:8081/board/mgmt.do
	}
	function view() {
		location.href = "<c:url value='/view.do'/>"; // http://127.0.0.1:8081/board/view.do
	}
</script>


</head>
<body>

	<div class="container">
		<h1>박양주</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				<form class="form-inline" action="/Login.do" method="post">
					<div class="form-group">
						<label for="id">ID</label> <input type="text" class="form-control"
							id="id" name="id">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" name="pwd">
					</div>
					<button type="submit" class="btn btn-default">로그인</button>


					<button type="submit" class="btn btn-default" style="float: right">검색</button>
					<input type="text" class="form-control" id="searchName"
						name="searchName" style="float: right"> <label
						for="searchName" style="float: right">제목(내용)</label>
				</form>
			</div>

			<div class="panel-body">
				<form class="form-inline" action="/search.do" method="post">

					<div class="form-group">
						<label for="searchName">제목(내용)</label> <input type="text"
							class="form-control" id="searchName" name="searchName">
					</div>

					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>게시물번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>등록자</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo.idx}</td>
									<td><a href="javascript:view()">${vo.title}</a></td>
									<td>${vo.count}</td>
									<td>${vo.writer}</td>
									<td>${vo.indate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div class="panel-footer">
				<button type="button" class="btn btn-primary" onclick="add()">등록</button>
			</div>
		</div>
	</div>
</body>
</html>