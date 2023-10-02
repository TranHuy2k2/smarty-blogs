<?php

namespace app\classes;

use PDO;
use PDOException;

class Database
{
    private $username, $host, $dsn, $password, $dbname;
    public $database, $errors;
    private static $dbInstance = null;
    public function __construct()
    {
        $this->username = $_ENV['DB_USERNAME'];
        $this->password = $_ENV['DB_PASSWORD'];
        $this->dbname = $_ENV['DB_DATABASE'];
        $this->host = $_ENV['DB_HOST'];
        $this->dsn = "mysql:host=$this->host;dbname=$this->dbname;";
        $this->errors = [];
        try {
            $this->database = new PDO($this->dsn, $this->username, $this->password);
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
            $this->errors = $e;
        }
    }
    public static function getInstance()
    {
        if (self::$dbInstance == null) {
            self::$dbInstance = new Database();
        }
        return self::$dbInstance;
    }
}
