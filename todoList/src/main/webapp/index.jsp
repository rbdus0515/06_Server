<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To do List</title>

<link rel="stylesheet" href="/resources/css/main.css" type="text/css">
</head>
<body>

	<main>

		<c:choose>

			<%-- 로그인 하지 않았을 때 --%>
			<c:when test="${empty sessionScope.loginMember}">

				<h1>투 두 리스트 로그인</h1>
				<section id="login-page">
					<form action="/login" method="post" id="login">
						<section>
							<p>아이디</p>
							<input type="text" name="inputId" id="inputId">
						</section>
						<section>
							<p>비밀번호</p>
							<input type="password" name="inputPw" id="inputPw">
						</section>
						<section>
							<button id="login-btn">로그인</button>
						</section>
					</form>
					<form action="/signup" method="get" name="signup-form">
						<section>
							<a href="/signup" id="signup">회원가입</a>
						</section>
					</form>
				</section>
			</c:when>

			<%-- 로그인 했을 때 --%>
			<c:otherwise>
				<h1>${sesscionScope.loginMember.memberNickname}의 투두리스트</h1>

				<div>
					<a href="#" id="nickname">${sesscionScope.loginMember.memberNickname}</a>
					<a href="/logout" id="logputBtn">로그아웃</a>
				</div>
			</c:otherwise>

		</c:choose>

	</main>






























	<c:if test="${not empty sessionScope.message}">

		<script>
			// EL/JSTL 구문이 먼저 해석
			// 문자열의 경우 따옴표가 없는 상태이니 옆에 붙여줘야함.
			alert('${message}')
		</script>

		<c:remove var="message" scope="session" />

	</c:if>


</body>
</html>