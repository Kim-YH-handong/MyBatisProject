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
				<label>Password: </label><input type='password' name='password' />
			</div>
			<button type='submit'>SUBMIT</button>
	</form>
</body>
</html>