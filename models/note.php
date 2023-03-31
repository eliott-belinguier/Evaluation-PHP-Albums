<?php
namespace Model;

class Note implements Model {

    private $id;
    private $note;
    private $commentaire;

    private function __construct(int $id, int $note, string $commentaire) {
        $this->id = $id;
        $this->note = $note;
        $this->commentaire = $commentaire;
    }

    public function getId(): int {
        return $this->id;
    }

    public function getNote(): int {
        return $this->note;
    }

    public function getCommentaire(): string
    {
        return $this->commentaire;
    }

}