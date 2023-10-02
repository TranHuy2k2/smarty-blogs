<?php

namespace app\controllers;

use app\classes\JWTUtil;
use app\models\BlogModel;
use app\objects\Blog;
use app\objects\User;

class Home extends BaseController
{
    private $blogModel;
    public function __construct($url, $action)
    {
        parent::__construct($url, $action);
        $this->blogModel = new BlogModel();
    }
    function index()
    {

        $blogs = $this->blogModel->getAllBlogs();
        $blogs = array_map(function ($blog) {
            $user = new User($blog['user_id'], $blog['name'], $blog['email'], $blog['password']);
            return new Blog($blog['id'], $blog['title'], $blog['content'], $blog['image'], $blog["created_at"], $user);
        }, $blogs);
        $this->tpl->assign('header', 'Welcome to Blogs');
        $this->tpl->assign('page', 'Home');
        $this->tpl->assign("blogs", $blogs);

        $this->tpl->display("home/index.tpl");
    }
}
