<?php
namespace Model;

use \PDO;

class Model {

    private static $connection = null;

    protected static function connect(): PDO {
        if (self::$connection != null)
            return self::$connection;
        $dsn = sprintf("mysql:host=%s;dbname=%s",
            getenv('DB_HOST'),
            getenv('DB_NAME')
        );
        self::$connection = new PDO($dsn, getenv('DB_USER'), getenv('DB_PASSWORD'));
        return self::$connection;
    }

    protected static function insert(string $table, ?array $values): bool {
        $db = self::connect();
        $valueCount = $values != null ? count($values) : 0;
        if ($valueCount < 1)
            return false;
        $request = 'INSERT INTO $table (id';
        foreach ($values as $key => $value)
            $request .= ', ' . $key;
        $request .= ') (DEFAULT';
        for ($i = 0; $i < $valueCount; ++$i)
            $request .= ', ?';
        $stmt = $db->prepare($request);
        $i = 0;
        foreach ($values as $value)
            $stmt->bindValue(++$i, $value);
        return $stmt->execute();
    }

    protected static function fetch(string $table, ?array $filter = null): ?array {
        $db = self::connect();
        $filterCount = $filter != null ? count($filter) : 0;
        $request = "SELECT * FROM $table";

        if ($filterCount > 0) {
            $request .= ' WHERE';
            foreach ($filter as $key => $value) {
                $request .= " $key = ?";
            }
        }
        $stmt = $db->prepare($request);
        $i = 0;
        if ($filterCount > 0) {
            foreach ($filter as $value) {
                $stmt->bindValue(++$i, $value);
            }
        }
        if ($stmt->execute())
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        return null;
    }

    public function getId(): int {
        return -1;
    }

}