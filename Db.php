<?php

class Db
{
    public function __construct() {

    }

    public function getConnection(string $host, string $dbname, string $user, string $pass, string $port='3306') {
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
