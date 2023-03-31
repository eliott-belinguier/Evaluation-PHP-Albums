<?php
namespace Controller\Session;

function session_setup(): void {
    session_start(array('name' => 'id', 'save_path' => __DIR__ . '../sessions/'));
}