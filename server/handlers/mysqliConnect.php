<?php

$link = mysqli_connect("127.0.0.1", "root", "1111", "website");


if (!$link) {
    die("Ошибка: Невозможно установить соединение");   
}


$users = $link->query('SELECT username, age from users WHERE age > 50');

var_dump($users);


mysqli_close($link);
