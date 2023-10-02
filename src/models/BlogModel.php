<?php

namespace app\models;

class BlogModel extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getAllBlogs()
    {
        $sql = "SELECT * FROM blogs";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();
        return $result;
    }
}
