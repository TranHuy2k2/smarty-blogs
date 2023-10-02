<?php

namespace app\controllers;

use app\models\BlogModel;

class Blog extends BaseController
{
    private $blogModel;
    public function __construct($url, $action)
    {
        parent::__construct($url, $action);
        $this->blogModel = new BlogModel();
    }

    public function showCreate()
    {
        $this->tpl->assign('page', 'CreateBlog');
        $this->tpl->display("blog/create.tpl");
    }
    public function store()
    {
    }
}
