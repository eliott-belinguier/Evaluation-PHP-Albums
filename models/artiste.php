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
        return $this->id;
    }

    public function getNom(): string {
        return $this->nom;
    }

    public function getPrenom(): string {
        return $this->prenom;
    }

    private static function buildFromRow(?array $row): ?Artiste {
        if ($row == null)
            return null;
        return new Artiste($row['id'], $row['Nom'], $row['Prenom']);
    }

    public static function fetchFromId(int $id): ?Artiste {
        $result = self::fetch('artiste', array('id' => $id));
        if ($result == null || count($result) != 1)
            return null;
        return self::buildFromRow($result[0]);
    }

    public static function fetchAll(): ?array {
        $result = self::fetch('artiste');
        if ($result == null || count($result) < 1)
            return null;
        $artistes = [];
        foreach ($result as $rowArtiste) {
            $artiste = self::buildFromRow($rowArtiste);
            if ($artiste != null)
                $artistes[] = $artiste;
        }
        if (count($artistes) < 1)
            return null;
        return $artistes;
    }

}