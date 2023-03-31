<?php
namespace Model;

class Note extends Model {

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

    private static function buildFromRow(?array $row): ?Note {
        if ($row == null)
            return null;
        return new Note($row['id'], $row['note'], $row['commentaire']);
    }

    public static function fetchFromOeuvreId(int $id): ?array {
        $result = self::fetch('noter', array('idOeuvre' => $id));
        if ($result == null)
            return null;
        $notes = [];
        foreach ($result as $rowArtiste) {
            $album = self::buildFromRow($rowArtiste);
            if ($album != null)
                $notes[] = $album;
        }
        if (count($notes) < 1)
            return null;
        return $notes;
    }

    public static function fetchFromId(int $id): ?Note {
        $result = self::fetch('noter', array('id' => $id));
        if ($result == null || count($result) != 1)
            return null;
        return self::buildFromRow($result[0]);
    }

    public static function fetchAll(): ?array {
        $result = self::fetch('noter');
        if ($result == null || count($result) < 1)
            return null;
        $oeuvre = [];
        foreach ($result as $rowArtiste) {
            $artiste = self::buildFromRow($rowArtiste);
            if ($artiste != null)
                $oeuvre[] = $artiste;
        }
        if (count($oeuvre) < 1)
            return null;
        return $oeuvre;
    }

}