<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Login / Sign Up Form</title>

    <script>
    function setFormMessage(formElement, type, message) {
        const messageElement = formElement.querySelector(".form__message");

        messageElement.textContent = message;
        messageElement.classList.remove("form__message--success", "form__message--error");
        messageElement.classList.add(`form__message--${type}`);
    }

    function setInputError(inputElement, message) {
        inputElement.classList.add("form__input--error");
        inputElement.parentElement.querySelector(".form__input-error-message").textContent = message;
    }

    function clearInputError(inputElement) {
        inputElement.classList.remove("form__input--error");
        inputElement.parentElement.querySelector(".form__input-error-message").textContent = "";
    }

    //빈칸 검사
    function validateForm(){
        var signInUsername = document.form2.signInUsername;
        if(signInUsername.value == ""){
            alert("Pleae input username");
            signInUsername.focus();
            return false;
        }
        if(signInUsername.value.length<5){
            signInUsername.focus();
            return false;
        }
        var email = document.form2.email;
        if(email.value == ""){
            alert("Pleae input email");
            email.focus();
            return false;
        }
        var password = document.form2.password;
        if(password.value == ""){
            alert("Pleae input password");
            password.focus();
            return false;
        }
        if(password.value.length<5){
            password.focus();
            return false;
        }
    }

    function mover(){
        var m;
        m=document.getElementById("btn");
        m.style.background='#007f67';
    }

    function mout(){
        var m;
        m=document.getElementById("btn");
        m.style.background='#009579';
    }

    document.addEventListener("DOMContentLoaded", () => {
        const loginForm = document.querySelector("#login");
        const createAccountForm = document.querySelector("#createAccount");

        document.querySelector("#linkCreateAccount").addEventListener("click", e => {
            e.preventDefault();
            loginForm.classList.add("form--hidden");
            createAccountForm.classList.remove("form--hidden");
        });

        document.querySelector("#linkLogin").addEventListener("click", e => {
            e.preventDefault();
            loginForm.classList.remove("form--hidden");
            createAccountForm.classList.add("form--hidden");
        });

        //일단 데이터베이스가 없으므로 무조건 막아둠
        loginForm.addEventListener("submit", e => {
            e.preventDefault();

            setFormMessage(loginForm, "error", "Invalid username/password combination");
        });

        //아이디랑 비밀번호 5글자 이상으로 설정
        document.querySelectorAll(".form__input").forEach(inputElement => {
            inputElement.addEventListener("blur", e => {
                if (e.target.id === "signInUsername" && e.target.value.length > 0 && e.target.value.length < 5) {
                    setInputError(inputElement, "Username must be at least 5 characters in length");
                }
                if (e.target.id === "password" && e.target.value.length > 0 && e.target.value.length < 5) {
                    setInputError(inputElement, "Password must be at least 5 characters in length");
                }
            });

            inputElement.addEventListener("input", e => {
                clearInputError(inputElement);
            });
        });
    });
    </script>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');

body {
    --color-primary: #000000;
    --color-secondary: #252c6a;
    --color-error: #cc3333;
    --color-success: #4bb544;
    --border-radius: 4px;

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
    border-radius: var(--border-radius);
    background: #ffffff;
}

.container,
.form__input,
.form__button {
    font: 500 1rem 'Quicksand', sans-serif;
}

.form--hidden {
    display: none;
}

.form > *:first-child {
    margin-top: 0;
}

.form > *:last-child {
    margin-bottom: 0;
}

.form__title {
    font-family: 'Staatliches', cursive; 
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
    font-family: 'Staatliches', cursive; 
    font-size: 4em; 
    text-align: center; 
    color: #000000;
    text-shadow: 3px 3px #000000; 
    margin: 0; 
    margin-bottom: 2rem;
    text-decoration: 
    underline;
}

.form__message {
    text-align: center;
    margin-bottom: 1rem;
}

.form__message--success {
    color: var(--color-success);
}

.form__message--error {
    color: var(--color-error);
}

div.radio-wrap {
    margin-bottom: 1rem;
    display: inline-flex;
    vertical-align: middle;
}

.box-radio-input input[type="radio"]{
    display:none;
}

.box-radio-input input[type="radio"] + span{
    display:inline-block;
    background:none;
    border:1px solid #dfdfdf;  
    border-radius: var(--border-radius);
    padding:0px 10px;
    margin:0px 5px;
    text-align:center;
    height:35px;
    line-height:33px;
    font-weight:500;
    cursor:pointer;
}

.box-radio-input input[type="radio"]:checked + span{
    border:1px solid #000000;
    background:#000000;
    color:#fff;
}

.form__input-group {
    margin-bottom: 1rem;
}

.form__input {
    display: block;
    width: 100%;
    padding: 0.75rem;
    box-sizing: border-box;
    border-radius: var(--border-radius);
    border: 1px solid #dddddd;
    outline: none;
    background: #eeeeee;
    transition: background 0.2s, border-color 0.2s;
}

.form__input:focus {
    border-color: var(--color-primary);
    background: #ffffff;
}

.form__input--error {
    color: var(--color-error);
    border-color: var(--color-error);
}

.form__input-error-message {
    margin-top: 0.5rem;
    font-size: 0.85rem;
    color: var(--color-error);
}

.form__button {
    width: 100%;
    padding: 1rem 2rem;
    font-weight: bold;
    font-size: 1.1rem;
    color: #ffffff;
    border: none;
    border-radius: var(--border-radius);
    outline: none;
    cursor: pointer;
    background: var(--color-primary);
}

.form__button:active {
    transform: scale(0.98);
}

.form__text {
    text-align: center;
}

.form__link {
    color: var(--color-secondary);
    text-decoration: none;
    cursor: pointer;
}

.form__link:hover {
    text-decoration: underline;
}
    </style>

</head>
<body>
    <div class="container">
        <form class="form" id="login">
            <h1 class="form__subtitle">Non Face to Face</h1>
            <h1 class="form__title">Funeral</h1>
            <div class="form__message form__message--error"></div>

            <div class="form__input-group">
                <input type="text" name="userid" class="form__input" autofocus placeholder="Username">
                <div class="form__input-error-message"></div>
            </div>

            <div class="form__input-group">
                <input type="password" name="password" class="form__input" autofocus placeholder="Password">
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
        <!-- <form name="form2" action="form_ok.php" onsubmit="return validateForm()" method="post" class="form form--hidden" id="createAccount">
            <h1 class="form__subtitle">Create Account</h1>
            <div class="form__message form__message--error"></div>

            <div class="form__input-group">
                <input type="text" id="signInUsername" name="signInUsername" class="form__input" autofocus placeholder="Username">
                <div class="form__input-error-message"></div>
            </div>

            <div class="form__input-group">
                <input type="text" id="email" name="email" class="form__input" autofocus placeholder="Email Address">
                <div class="form__input-error-message"></div>
            </div>

            <div class="form__input-group">
                <input type="password" id="password" name="password" class="form__input" autofocus placeholder="Password" onchange="btnActive()">
                <div class="form__input-error-message"></div>
            </div>

            <div class="radio-wrap">
                <label class="box-radio-input">
                    <input type="radio" name="gender" value="Male" checked="checked"> <span>Male</span>
                </label>
                <label class="box-radio-input">
                    <input type="radio" name="gender" value="Female"> <span>Female</span>
                </label>
                <label class="box-radio-input">
                    <input type="radio" name="gender" value="None-binary"> <span>None-binary</span>
                </label>
            </div>

            <input id="btn" type="submit" class="form__button" value="Continue" onmouseover="mover()" onmouseout="mout()">
            
            <p class="form__text">
                <a class="form__link" href="./" id="linkLogin">Already have an account? Sign in</a>
            </p>
        </form> -->
    </div>
</body>