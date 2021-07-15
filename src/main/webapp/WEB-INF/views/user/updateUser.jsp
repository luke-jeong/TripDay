<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<<<<<<< HEAD
<div class="container" style="width: 500px;   margin-top: 220px; margin-bottom:220px; border: solid 1px blue; padding:30px; border-radius: 30px;">
=======
<div class="container">
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group">
			<label for="username">Username</label> 
			<input type="text" value="${principal.user.username }" class="form-control" placeholder="Enter username" id="username" readonly>
		</div>
		
		<c:if test="${empty principal.user.provider}">
			<div class="form-group">
				<label for="password">Password</label> 
				<input type="password" class="form-control" placeholder="Enter password" id="password">
			</div>
		</c:if>
		
		<div class="form-group">
			<label for="email">Email</label> 
			<input type="email" value="${principal.user.email}" class="form-control" placeholder="Enter email" id="email" readonly>
		</div>
		
	</form>
<<<<<<< HEAD
	<button id="btn-update" class="btn btn-primary" style="color: white; border: 1px grey; padding: 5px; font-size: 1.2em">수정</button>
=======
	<button id="btn-update" class="btn btn-primary" style="color: black; border: 1px grey; padding: 5px; font-size: 1.2em">회원수정완료</button>
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95

</div>

<script src="${R}/res/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>
