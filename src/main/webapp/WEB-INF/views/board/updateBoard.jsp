<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<%-- <div class="container">

	<form>
		<input type="hidden" id="id" value="${board.id}"/>
		<div class="form-group">
			<input value="${board.title}" type="text" class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">글수정완료</button>
</div> --%>
<div class="board_wrap">
	<form>
		<input type="hidden" id="id" value="${board.id}" />
		<div class="board_title">
			<strong>후기 게시판</strong>
		</div>
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>수정</dt>
						<dd>
							<input type="text" value = "${board.title}" placeholder="제목 입력" id="title">
						</dd>
					</dl>
				</div>

				<div class="form-group">
					<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
				</div>
			</div>

		</div>
	<div class="bt_wrap">
	<button id="btn-update" class="bt_css bt_black">수정</button>
<<<<<<< HEAD
	<a onclick="history.back();" class="bt_css">취소</a>
=======
	<a href="/?${ pagination.queryString}" class="bt_css">취소</a>
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95
	</div>
	</form>

</div>
<script src="${R}/res/js/board.js"></script>
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<%@ include file="../layout/footer.jsp"%>
