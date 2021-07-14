<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" /> <input
			type="hidden" id="id" value="${principal.user.username}" /> <input
			type="hidden" id="id" value="${principal.user.password}" />
		<div class="form-group">
			<label for="nickname">Nickname</label> <input type="text"
				value="${principal.user.nickname }" class="form-control"
				placeholder="Enter nickname" id="nickname">
		</div>


	</form>
	<button id="btn-nicknameUpdate" class="btn btn-primary">등록</button>

</div>

<script src="${R}/res/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>
