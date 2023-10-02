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
    public function login()
    {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $errors = [];
        // Validate email
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $errors['email'] = 'Email is not valid';
        }
        // Validate password
        if (strlen($password) < 6) {
            $errors['password'] = 'Password must be at least 6 characters';
        }
        $this->tpl->assign('errors', $errors);
        $this->tpl->assign('page', 'Auth');
        $this->tpl->display('auth/login.tpl');
    }
    public function register()
    {
        $email = $_POST['email'];
        $name = $_POST['name'];
        $password = $_POST['password'];
    }
}
