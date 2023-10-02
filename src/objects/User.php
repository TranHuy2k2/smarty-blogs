<?php

namespace app\objects;

class User
{
    private $id;
    private $email;
    private $name;
    private $password;

    public function __construct($id, $name, $email,  $password)
    {
        $this->email = $email;
        $this->name = $name;
        $this->password = $password;
        $this->id = $id;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getPassword()
    {
        return $this->password;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function setName($name)
    {
        $this->name = $name;
    }

    public function setPassword($password)
    {
        $this->password = $password;
    }
}
