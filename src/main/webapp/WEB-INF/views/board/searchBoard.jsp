<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="board_wrap">
	<div class="board_title">
		<strong>후기 게시판</strong>

	</div>
	<div class="board_list_wrap">
		<div class="board_list">
			<div class="top">
				<div class="num">번호</div>
				<div class="title">제목</div>
				<div class="writer">글쓴이</div>
				<div class="date">작성일</div>
				<div class="count">조회</div>
			</div>

			<c:forEach var="board" items="${boards}">
				<%-- 			<div class="card m-2">
				<div class="card-body">
					<h4 class="card-title">${board.title}</h4>
					<a href="/board/${board.id}" class="btn btn-primary">상세보기</a>
				</div>
			</div> --%>
				<div>
					<div class="num">${board.id}</div>
					<div class="title">
						<a href="/board/${board.id}">${board.title}</a>
					</div>
					<div class="writer">${board.user.nickname}</div>
					<div class="date">${board.regDate}</div>
					<div class="count">${board.boardCount }</div>
				</div>

			</c:forEach>

		</div>
	</div>


</div>
<script src="${R}/res/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>