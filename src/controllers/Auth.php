<?php

namespace app\controllers;

class Auth extends BaseController
{
    public function showLogin()
    {
        $this->tpl->assign('page', 'Auth');
        $this->tpl->display('auth/login.tpl');
    }
    public function showRegister()
    {
        $this->tpl->assign('page', 'Auth');
        $this->tpl->display('auth/register.tpl');
    }
}
