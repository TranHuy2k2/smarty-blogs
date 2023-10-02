<?php

namespace app\objects;

class Blog
{
    private $id = NULL;
    private $title = NULL;
    private $content = NULL;
    private $image = NULL;
    private $created_at = NULL;
    private $author = NULL;
    public function __construct($id, $title, $content, $image, $created_at, $author)
    {
        $this->id = $id;
        $this->title = $title;
        $this->content = $content;
        $this->image = $image;
        $this->created_at = $created_at;
        $this->author = $author;
    }

    // Getters and Setters
    public function getId()
    {
        return $this->id;
    }
    public function getTitle()
    {
        return $this->title;
    }
    public function getContent()
    {
        return $this->content;
    }
    public function getImage()
    {
        return $this->image;
    }
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    public function getAuthor()
    {
        return $this->author;
    }
    public function setId($id)
    {
        $this->id = $id;
    }
    public function setTitle($title)
    {
        $this->title = $title;
    }
    public function setContent($content)
    {
        $this->content = $content;
    }

    public function setImage($image)
    {
        $this->image = $image;
    }
    public function setCreatedAt($created_at)
    {
        echo $created_at;
        $this->created_at = $created_at;
    }
    public function setAuthor($author)
    {
        $this->author = $author;
    }
}
