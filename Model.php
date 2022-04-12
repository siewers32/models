<?php

class Model
{
    public string $table;
    public array $fields;
    public string $pk;
    public string $fk;

    public function __construct() {

    }

    public function all(PDO $connection) {
        $query = "select * from ".$this->table;
        $stmt = $connection->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getById(PDO $connection, $id) {
        $query = "select * from ".$this->table." where ".$this->pk. "= :id";
        $stmt = $connection->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function store(PDO $connection) {
        $query = "insert into ".$this->table." (".implode(", ", $this->fields).")"
            ." values (:".implode(", :", $this->fields).")";
        $stmt = $connection->prepare($query);
        foreach($this->fields as $field) {
            if(isset($_POST[$field])) {
                $stmt->bindParam(':'.$field,  $_POST[$field]);
            }
        }

        return $stmt->execute();
    }
}