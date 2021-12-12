<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<link rel="stylesheet" href="./css/code.css" type="text/css">
<script src="./code.js"></script>
</head>

<body>
    <div class="container">
        <form class="form" id="login" method="post" action="code/codeOk">
            <h1 class="form__title">CODE CHECK</h1>
            <div class="form__message form__message--error"></div>

            <div class="form__input-group">
                <input type="password" name="code" class="form__input" autofocus placeholder="Please Input Valid Code">
                <div class="form__input-error-message"></div>
            </div>

            <button id="btn" class="form__button" type="submit" onmouseover="mover()" onmouseout="mout()">Continue</button>

            <p class="form__text">
                <a href="#" class="form__link">Forgot your password?</a>
            </p>

            <p class="form__text">
                <a class="form__link" href="./" id="linkCreateAccount">Don't have an account? Create account</a>
            </p>
        </form>
    </div>
</body>
</html>