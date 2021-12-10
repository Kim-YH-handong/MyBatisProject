<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: white;
	color: black;
	font-size: 15px
}
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<form method="post" action="code/codeOk">
			<div>
				<label>Code: </label><input type='text' name='code' />
			</div>
			<button type='submit'>SUBMIT</button>
		</form>
	</div>
</body>
</html>