<?php

namespace app\models;

use PDO;

class BlogModel extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getAllBlogs()
    {
        $sql = "SELECT b.id, b.title, b.content, b.image, b.created_at, u.email, u.id as user_id, u.name, u.password FROM blogs as b join users as u on b.author_id = u.id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();
        return $result;
    }
    public function getBlogById($id)
    {
        $sql = "SELECT b.id, b.title, b.content, b.image, b.created_at, u.email, u.id as user_id, u.name, u.password FROM blogs as b join users as u on b.author_id = u.id where b.id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }
    public function insertBlog($title, $content, $image, $author_id)
    {
        $sql = "INSERT INTO blogs (title, content, image, author_id) VALUES (:title, :content, :image, :author_id)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':image', $image);
        $stmt->bindParam(':author_id', $author_id);
        $stmt->execute();
    }
}
