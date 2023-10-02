<?php

namespace app\models;

use app\classes\Database;

abstract class BaseModel
{
    protected $db;
    public function __construct()
    {
        $this->db = Database::getInstance()->database;
    }
}
