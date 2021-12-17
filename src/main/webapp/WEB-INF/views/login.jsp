<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<style>
.center {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	padding: 10px;
}

.form_button {
	width: 100%;
	padding: 1rem 2rem;
	font-weight: bold;
	font-size: 1.1rem;
	color: #ffffff;
	border: none;
	border-radius: 12px;
	outline: none;
	cursor: pointer;
	background: #000000;
	color: #FFFFFF;
	margin: 5px;
}

.form_input {
	display: block;
	width: 100%;
	padding: 0.75rem;
	box-sizing: border-box;
	border-radius: 10px;
	border: 1px solid #dddddd;
	outline: none;
	background: #eeeeee;
	transition: background 0.2s, border-color 0.2s;
	margin: 5px;
}

body { -
	-color-primary: #000000; -
	-color-secondary: #252c6a; -
	-color-error: #cc3333; -
	-color-success: #4bb544; -
	-border-radius: 4px;
	margin: 0;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 18px;
	background: url(./resources/img/background.jpg);
	background-size: cover;
}

.container {
	width: 400px;
	max-width: 400px;
	margin: 1rem;
	padding: 2rem;
	box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	background: #ffffff;
}

.form__title {
    font-family: 'Staatliches'; 
    font-size: 5em; 
    text-align: center; 
    color: #000000;
    text-shadow: 4px 4px #000000; 
    margin: 0; 
    margin-bottom: 2rem;
    text-decoration: 
    underline;
}

.form__subtitle {
    font-family: 'Staatliches'; 
    font-size: 2em; 
    text-align: center; 
    color: #000000;
 	margin: 0; 
    margin-bottom: 1rem;
    text-decoration: 
    underline;
}
</style>
</head>
<body>
		<div class="container">
		<h1 class="form__subtitle">Non Face to Face</h1>
            <h1 class="form__title">Funeral</h1>
			<form method="post" action="login/loginOk">
				<div>
					<label>ID: </label><input type='text' class="form_input"
						name='userid' autofocus placeholder="UserId" />
				</div>
				<div>
					<label>Password: </label><input type='password' class="form_input"
						name='password' autofocus placeholder="Password" />
				</div>
				<input type="button" class="form_button" value="회원가입"
					onclick="location.href='signUp'">
				<button type='submit' class="form_button">SUBMIT</button>
			</form>
		</div>
</body>
</html>