<?php
namespace Model;

class Artiste extends Model {

    private $id;
    private $nom;
    private $prenom;

    private function __construct(int $id, string $nom, string $prenom) {
        $this->id = $id;
        $this->nom = $nom;
        $this->prenom = $prenom;
    }

    public function getId(): int {
        return -1;
    }

    public static function fetchFromId(int $id): ?Artiste {
        return null;
    }

    public static function fetchAll(): ?array {
        return null;
    }

}