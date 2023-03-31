<?php
namespace Model;
include 'models/model.php';

class Album implements Model {

    private $id;
    private $title;
    private $description;
    private $pochette;
    private $artiste;
    private $notes;

    private function __construct(int $id, string $title, string $description, string $pochette, Artiste $artiste, ?array $notes) {
        $this->id = $id;
        $this->title = $title;
        $this->description = $description;
        $this->pochette = $pochette;
        $this->artiste = $artiste;
        $this->notes = $notes;
    }

    public function getId(): int {
        return $this->id;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function getDescription(): string {
        return $this->description;
    }

    public function getPochette(): string {
        return $this->pochette;
    }

    public function getArtiste(): Artiste {
        return $this->artiste;
    }

    public function getNotes(): ?array {
        return $this->notes;
    }

    public static function fetchFromId(int $id): ?Album {
        return null;
    }

    public static function fetchAll(): ?array {
        return null;
    }

}