<?php
use \Controller\Session;
use \Controller\Home;

Home::get(
    $_GET['id'] ?? null,
    $_GET['search'] ?? null
);