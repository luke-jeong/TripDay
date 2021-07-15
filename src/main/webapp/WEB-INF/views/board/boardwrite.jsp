<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<div class="board_wrap">
<form>
	<div class="board_title">
		<strong>후기 게시판</strong>
	</div>
	<div class="board_write_wrap">
		<div class="board_write">
			<div class="title">
				<dl>
					<dt>제목</dt>
					<dd>
						<input type="text" placeholder="제목 입력" id="title">
					</dd>
				</dl>
			</div>

			<div class="form-group">
				<textarea class="form-control summernote" rows="5" id="content"></textarea>
			</div>
		</div>

	</div>
	<div class="bt_wrap">
	<button id="btn-save" class="bt_css bt_black">등록</button>
	<a onclick="history.back();" class="bt_css">취소</a>
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