<?php
namespace Controller;
include 'models/album.php';

use Model\Album;

class Home {

    public static function get(?string $albumId, ?string $search) : void {
        global $album;

        if (!$albumId) {
            $album = Album::fetchAll();
            include __DIR__ . '/../views/home.php';
            return;
        }
        $album = Album::fetchFromId($albumId);
        if ($album == null) {
            include __DIR__ . '/../views/home.php';
            return;
        }
        include __DIR__ . '/../views/home.php';
    }

}
