<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form method="post" action="login/loginOk">
		<div>
			<label>ID: </label><input type='text' name='userid' />
		</div>
		<div>
			<label>Password: </label><input type='text' name='password' />
		</div>
		<input type="button" value="회원가입" onclick="location.href='signUp'">
		<button type='submit'>로그인</button>
	</form>
</body>
</html>