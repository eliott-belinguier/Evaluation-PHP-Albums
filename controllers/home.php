<?php
namespace Controller;

use Model\Album;

class Home {

    public static function get(?string $albumId, ?string $search) : void {
        global $album;

        if (!$albumId) {
            $album = Album::fetchAll();
            if ($search != null) {
                $searchPrefix = strtolower($search);
                $album = array_filter($album, static function ($element) use ($searchPrefix) {
                   return str_starts_with(strtolower($element->getTitle()), $searchPrefix);
                });
            }
            include __DIR__ . '/../views/home.php';
            return;
        }
        $album = Album::fetchFromId($albumId);
        if ($album == null) {
            include __DIR__ . '/../views/home.php';
            return;
        }
        include __DIR__ . '/../views/album.php';
    }

}
