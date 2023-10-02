<?php

namespace app\controllers;

use app\models\BlogModel;
use app\objects\Blog;

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
        $welcomeBlog = new Blog(null, "Thanks for taking your time!", "Hi, my name is Tran Huy. I'm a full-stack web developer and a final-year computer science student at Can Tho University. Thanks for interviewing me today!", "/assets/images/banner.png", null);
        $this->tpl->assign('header', 'Welcome to Blogs');
        $this->tpl->assign('page', 'Home');
        $this->tpl->assign("blogs", array($welcomeBlog, $welcomeBlog, $welcomeBlog, $welcomeBlog));
        $this->tpl->display("home/index.tpl");
    }
}
