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