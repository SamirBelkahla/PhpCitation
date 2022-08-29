<?php

    class Citation {
        public $db;

        public function __construct($db){
            $this->db = $db;
        }

        public function create($text, $author): void {
            $now = new DateTime();
            $date = $now->format('Y-m-d');
            $this->db->query("INSERT INTO citation(quote_text,quote_author, quote_date) VALUES('$text','$author', '$date')");
        }

        public function read(): array {
            $query = $this->db->query("SELECT * FROM citation ORDER BY quote_id DESC");
            $result = $query->fetchAll();
            return $result;
        }
    }

?>
