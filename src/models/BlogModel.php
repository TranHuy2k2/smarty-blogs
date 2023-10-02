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
    public function insertBlog()
    {
        $sql = "INSERT INTO blogs (title, content, author_id) VALUES (:title, :content, :author_id)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':title', $_POST['title']);
        $stmt->bindParam(':content', $_POST['content']);
        $stmt->bindParam(':author', $_POST['author_id']);
        $stmt->execute();
    }
}
