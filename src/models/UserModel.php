<?php

namespace app\models;

class UserModel extends BaseModel
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getAllUsers()
    {
        $sql = "SELECT * FROM users";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();
        return $result;
    }
    public function getUserByEmail($email)
    {
        $sql = "SELECT * FROM users WHERE email = :email";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(array(':email' => $email));
        $result = $stmt->fetch();
        return $result;
    }
}
