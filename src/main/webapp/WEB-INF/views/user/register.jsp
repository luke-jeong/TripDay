
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form:form method="post" modelAttribute="userRegistration" acceptCharset="UTF-8">
		<div class="form-group">
			<div class="label">아이디:</div>
			<form:input class="form-control" path="username" />
			<form:errors path="username" class="error" />
		</div>
		<div class="form-group">
			<div class="label">비밀번호:</div>
			<form:password class="form-control" path="passwd1" />
			<form:errors path="passwd1" class="error" />
		</div>
		<div class="form-group">
			<div class="label">비밀번호 확인:</div>
			<form:password class="form-control" path="passwd2" />
			<form:errors path="passwd2" class="error" />
		</div>
		<div class="form-group">
			<div class="label">닉네임:</div>
			<form:input class="form-control" path="nickname" />
			<form:errors path="nickname" class="error" />
		</div>
		<div class="form-group">
			<div class="label">이름:</div>
			<form:input class="form-control" path="name" />
			<form:errors path="name" class="error" />
		</div>
		<div class="form-group">
			<div class="label">이메일:</div>
			<form:input class="form-control" path="email" />
			<form:errors path="email" class="error" />
		</div>


	  <button type="submit" class="btn">회원가입</button>
      <a href="${R}" class="btn">취소</a>
	</form:form>

</div>


<%@ include file="../layout/footer.jsp"%>
