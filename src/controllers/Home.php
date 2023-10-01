<?php

namespace app\controllers;

class Home extends BaseController
{
    function index()
    {

        $this->tpl->assign('header', 'Welcome to Blogs');
        $this->tpl->display("home/index.tpl");
    }
}
