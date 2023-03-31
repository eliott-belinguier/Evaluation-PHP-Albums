<?php

include 'models/model.php';
include 'models/album.php';
include 'models/artiste.php';
include 'models/note.php';

include 'controllers/home.php';
include 'controllers/sessions.php';

use \Controller\Session;
use \Controller\Home;

Home::get(
    $_GET['id'] ?? null,
    $_POST['search'] ?? null
);