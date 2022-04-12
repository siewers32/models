<?php

class Db
{
    public function __construct() {

    }

    public function getConnection(string $host='localhost',string $port='3306', string $dbname, string $user, string $pass) {
        try {
            $dsn = "mysql:host=".$host.";port=".$port.";dbname=".$dbname;
            $dbh = new PDO($dsn, $user, $pass);
            return $dbh;
         } catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }
}
