<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
</head>
<body>
	<h1>회원가입</h1>
	<form method="post" action="signUp/signUpOk">
		<div>
			<label>이름: </label><input type='text' name='realname' />
		</div>
		<div>
			<label>ID: </label><input type='text' name='userid' />
		</div>
		<div>
			<label>Password: </label><input type='text' name='password' />
		</div>

		<button type='submit'>회원가입</button>
	</form>
</body>
</html>