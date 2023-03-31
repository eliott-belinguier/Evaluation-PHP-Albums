<?php
namespace Controller;

use Model\Album;

class Home {


    public static function addNote(?string $albumId, ?string $note, ?string $comment): bool {
        if ($albumId == null || $note == null || $comment == null)
            return false;
        $album = Album::fetchFromId(intval($albumId));
        if ($album == null)
            return false;
        return $album->addNote(intval($note), $comment);
    }

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
            usort($album, static function ($element1, $element2) {
                return $element2->getAverageNote() - $element1->getAverageNote();
            });
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
