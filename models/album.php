<?php
namespace Model;

class Album extends Model {

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

    public function addNote(int $note, string $comment): bool {
        if ($note < 1 || $note > 5)
            return false;
        return self::insert('noter', array(
            'idOeuvre' => $this->id,
            'note' => $note,
            'commentaire' => $comment
        ));
    }

    private static function buildFromRow(?array $row): ?Album {
        if ($row == null)
            return null;
        $artiste = Artiste::fetchFromId($row['idArtiste']);
        if ($artiste == null)
            return null;
        $notes = Note::fetchFromOeuvreId($row['id']);
        return new Album($row['id'], $row['Titre'], $row['Description'], $row['Pochette'], $artiste, $notes);
    }

    public static function fetchFromId(int $id): ?Album {
        $result = self::fetch('album', array('id' => $id));
        if ($result == null || count($result) != 1)
            return null;
        return self::buildFromRow($result[0]);
    }

    public static function fetchAll(): ?array {
        $result = self::fetch('album');
        if ($result == null || count($result) < 1)
            return null;
        $albums = [];
        foreach ($result as $rowArtiste) {
            $artiste = self::buildFromRow($rowArtiste);
            if ($artiste != null)
                $albums[] = $artiste;
        }
        if (count($albums) < 1)
            return null;
        return $albums;
    }

}