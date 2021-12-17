<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<link rel="stylesheet" href="./css/code.css" type="text/css">
<script src="./code.js"></script>
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
	font-size: 3em;
	text-align: center;
	color: #000000;
	text-shadow: 4px 4px #000000;
	margin: 0;
	margin-bottom: 2rem;
	text-decoration: underline;
}
</style>

</head>

<body>
    <div class="container">
        <form class="form" id="login" method="post" action="code/codeOk">
            <h1 class="form__title">CODE CHECK</h1>
            <div class="form__message form__message--error"></div>

            <div class="form__input-group">
                <input type="password" name="code" class="form_input" autofocus placeholder="Please Input Valid Code">
            </div>

            <button id="btn" class="form_button" type="submit">Continue</button>
        </form>
    </div>
</body>
</html>