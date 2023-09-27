<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>

	<main>
		<h1>회원가입</h1>
		<form action="/signup" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="inputId" id="inputId">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="inputPw" id="inputPw">
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td>
						<input type="password" name="inputPwRe" id="inputPwRe">
					</td>
					 <td>
                        <span id="pwMessage"></span>
                    </td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td>
						<input type="text" name="inputNickname" id="inputNickname">
					</td>
					<td>
                        <span id="nicknameMessage"></span>
                    </td>
				</tr>
				<tr>
					<td></td>
					<td class="btn-area">
						<button type="reset">초기화</button>
						<button>가입하기</button>
					</td>
					<td></td>
				</tr>
			</table>
		</form>

	</main>

	<script src="/resources/js/signup.js"></script>
</body>
</html>