<?php

    class Database {
        const DBURL = 'localhost';
        const DBNAME = 'citation';
        private $username = 'dev';
        private $password = '123';
        public $connection = null;

        public function connection() {
            try{
                $this->connection = new PDO("mysql:host=". Database::DBURL."; dbname=" . Database::DBNAME, $this->username, $this->password);
                $this->connection->exec("set names utf8");
            } catch (PDOException $exception) {

            }        
            return $this->connection; 
        }
    }

?>