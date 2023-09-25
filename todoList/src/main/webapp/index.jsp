<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<form action="/login" method="post" id="login">
					<section id="login-page">
						<section>
							<p>아이디</p>
							<input type="text" id="inputId">
						</section>
						<section>
							<p>비밀번호</p>
							<input type="password" id="inputPw">
						</section>
						<section>
							<button id="login-btn">로그인</button>
						</section>
						<section>
								<a href="/signup" id="signup">회원가입</a>
						</section>
					</section>
				</form>
			</c:when>

			<%-- 로그인 했을 때 --%>
			<c:otherwise>
				<h1>${sesscionScope.loginMember.memberNickname}의 투 두 리스트</h1>
			</c:otherwise>						
		
		</c:choose>
	
	</main>

</body>
</html>