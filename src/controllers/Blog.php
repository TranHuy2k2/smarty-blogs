<?php

namespace app\controllers;

use app\classes\JWTUtil;
use app\models\BlogModel;
use app\objects\Blog as ObjectsBlog;
use app\objects\User;

class Blog extends BaseController
{
    private $blogModel;
    public function __construct($url, $action)
    {
        parent::__construct($url, $action);
        $this->blogModel = new BlogModel();
    }

    public function index()
    {
        $id = $_GET['id'];
        if (!isset($id)) {
            header("Location: /?controller=Home");
            return;
        }
        $blog = $this->blogModel->getBlogById($id);
        $user = new User($blog['user_id'], $blog['name'], $blog['email'], $blog['password']);
        $blog = new ObjectsBlog($blog['id'], $blog['title'], $blog['content'], $blog['image'], $blog["created_at"], $user);
        $this->tpl->assign('blog', $blog);
        $this->tpl->assign('page', 'ViewBlog');
        $this->tpl->display("blog/view.tpl");
    }

    public function showCreate()
    {
        if (!isset($_COOKIE['jwt'])) {
            header("Location: /?controller=Auth&action=showLogin");
            return;
        }
        $this->tpl->assign('page', 'CreateBlog');
        $this->tpl->display("blog/create.tpl");
    }
    public function store()
    {
        if (!isset($_COOKIE['jwt'])) {
            header("Location: /?controller=Auth&action=showLogin");
            return;
        }
        $user = JWTUtil::getPayload($_COOKIE['jwt']);
        $author_id = $user["id"];
        $title = $_POST['title'];
        $content = $_POST['content'];
        $image = $_POST['image'];
        $this->blogModel->insertBlog($title, $content, $image, $author_id);
        header("Location: /?controller=Home");
    }
}
