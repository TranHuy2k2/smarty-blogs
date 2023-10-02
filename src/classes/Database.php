<?php

namespace app\classes;



class Database
{
    private $username;
    public $database;
    private $password;
    public $errors;
    private static $dbInstance = null;
    public function __construct()
    {
        $this->username = $_ENV['DB_USERNAME'];
        $this->database = $_ENV['DB_DATABASE'];
        $this->password = $_ENV['DB_PASSWORD'];
        $this->errors = [];
    }
}
