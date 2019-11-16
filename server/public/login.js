'use strict'
var userName = document.querySelector('#username');
var userEmail = document.querySelector('#useremail');
var userPass = document.querySelector('#userpass');
var userSubscribe = document.querySelector('#usersubscribe');

var sendBtn = document.querySelector('#sendbtn');

console.log(sendBtn);

sendBtn.onclick = send;

function send () {

    if(!(/^[а-яa-z0-9\-_\.]{2,25}$/i.test(userName.value))) {
        alert('not valid name [а-яa-z0-9\-_\.]{2,25}')
        return false;
    }


    var data = {
        name: userName.value,
        email: userEmail.value,
        password: userPass.value,
        subscribe: userSubscribe.value,
    }

    fetch('/login', {
        method:'POST',
        body: JSON.stringify(data)
    });
}
