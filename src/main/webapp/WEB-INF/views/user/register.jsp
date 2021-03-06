
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<sec:authorize access="isAuthenticated()">
	<script>
	alert("로그인 된 사용자");
	location.href = "/";
	</script>
</sec:authorize>
<sec:authorize access="not authenticated">.

<div class="container" style="width: 500px;  margin-top: 90px; margin-bottom: 90px; border: solid 2px blue; padding:30px; border-radius: 30px;">
	<div class="board_title">
		<strong style="font-size: 38px">회원 가입</strong>
	</div>
	<form:form method="post" modelAttribute="userRegistration" acceptCharset="UTF-8">
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">아이디</div>
			<form:input class="form-control" path="username" />
			<form:errors path="username" class="error" />
		</div>
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">비밀번호</div>
			<form:password class="form-control" path="passwd1" />
			<form:errors path="passwd1" class="error" />
		</div>
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">비밀번호 확인</div>
			<form:password class="form-control" path="passwd2" />
			<form:errors path="passwd2" class="error" />
		</div>
<<<<<<< HEAD
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">닉네임</div>
			<form:input class="form-control" path="nickname" />
			<form:errors path="nickname" class="error" />
		</div>
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">이름</div>
=======
		<div class="form-group">
			<div class="label">닉네임:</div>
			<form:input class="form-control" path="nickname" />
			<form:errors path="nickname" class="error" />
		</div>
		<div class="form-group">
			<div class="label">이름:</div>
>>>>>>> dcfdf7f1ea9d65613e0aaf552aa2c2bc7080ea95
			<form:input class="form-control" path="name" />
			<form:errors path="name" class="error" />
		</div>
		<div class="form-group" style="margin: 25px 10px;">
			<div class="label" style="font-size: 18px;">이메일</div>
			<form:input class="form-control" path="email" />
			<form:errors path="email" class="error" />
		</div>


	  <button type="submit" class="btn btn-primary" style="width: 130px;">회원가입</button>
      <a href="${R}" class="btn btn-secondary" style="width: 130px;">취소</a>
	</form:form>

</div>

</sec:authorize>
<%@ include file="../layout/footer.jsp"%>
