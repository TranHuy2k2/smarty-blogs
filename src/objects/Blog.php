<?php

namespace app\objects;

class Blog
{
    private $id = NULL;
    private $title = NULL;
    private $content = NULL;
    private $image = NULL;
    private $author = NULL;
    public function __construct($id, $title, $content, $image, $author)
    {
        $this->id = $id;
        $this->title = $title;
        $this->content = $content;
        $this->image = $image;
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
    public function setAuthor($author)
    {
        $this->author = $author;
    }
}
