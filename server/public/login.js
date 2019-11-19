'use strict'
var userName = document.querySelector('#username');
var userNameError = document.querySelector('#username + .auth__error');


var userEmail = document.querySelector('#useremail');
var userEmailError = document.querySelector('#useremail + .auth__error');

var userPhone = document.querySelector('#userphone');
var userPhoneError = document.querySelector('#userphone + .auth__error');

var userPass = document.querySelector('#userpass');
var userSubscribe = document.querySelector('#usersubscribe');

var sendBtn = document.querySelector('#sendbtn');

sendBtn.onclick = send;

function send() {

    var isError = false;

    if (!(/^[а-яa-z0-9\-_\.]{2,25}$/i.test(userName.value))) {
        userNameError.classList.remove('auth__error_hide');
        userNameError.classList.add('auth__error_show');
        isError = true;
    }

    if (!(/^[0-9a-z.\-_]{1,15}@[0-9a-z.\-_]{1,14}\.[a-z]{1,10}$/i.test(userEmail.value))) {
        userEmailError.classList.remove('auth__error_hide');
        userEmailError.classList.add('auth__error_show');
        isError = true;
    }

    if (!(/^(\+380|380|80|0){1,4}[0-9]{9}$/.test(userPhone.value))) {
        userPhoneError.classList.remove('auth__error_hide');
        userPhoneError.classList.add('auth__error_show');
        isError = true;
    }

    if(isError) return null;


    var data = {
        name: userName.value,
        email: userEmail.value,
        password: userPass.value,
        subscribe: userSubscribe.value,
    }

    fetch('/login', {
        method: 'POST',
        body: JSON.stringify(data)
    });
}


function setClearHandler() {
    var elements = document.querySelectorAll('.auth__text');

    elements.forEach(function (element) {
        element.onclick = function () {            
            this.nextElementSibling.classList.remove('auth__error_show');
            this.nextElementSibling.classList.add('auth__error_hide');
        }
    });
}
setClearHandler();
