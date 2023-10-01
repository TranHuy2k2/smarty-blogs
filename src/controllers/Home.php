<?php

namespace app\controllers;

use app\objects\Blog;

class Home extends BaseController
{
    function index()
    {
        $welcomeBlog = new Blog(null, "Thanks for taking your time!", "Hi, my name is Tran Huy. I'm a full-stack web developer and a final-year computer science student at Can Tho University. Thanks for interviewing me today!", "/assets/images/banner.png", null);
        $this->tpl->assign('header', 'Welcome to Blogs');
        $this->tpl->assign('page', 'Home');
        $this->tpl->assign("blogs", array($welcomeBlog));
        $this->tpl->display("home/index.tpl");
    }
}
