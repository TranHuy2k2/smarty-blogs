<?php

namespace app\controllers;

use app\classes\JWTUtil;
use app\models\UserModel;

class Auth extends BaseController
{
    private $userModel;
    private $jwtUtil;
    public function __construct($url, $action)
    {
        parent::__construct($url, $action);
        $this->userModel = new UserModel();
        $this->jwtUtil = new JWTUtil();
    }
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

        if (count($errors) == 0) {
            $user = $this->userModel->getUserByEmail($email);
            if ($user) {
                if (password_verify($password, $user['password'])) {
                    $jwt = $this->jwtUtil->generateToken($user);
                    setcookie('jwt', $jwt, time() + 3600, '/');
                    $this->tpl->assign('message', 'Login successfully!');
                    // Redirect to the homepage
                    header("Location: /?controller=Home");
                    return;
                } else {
                    $this->tpl->assign('message', 'Incorrect Password!');
                }
            } else {
                $this->tpl->assign('message', 'Incorrect Password!');
            }
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


        $newUser = $this->userModel->createUser($email, $name, password_hash($password, PASSWORD_DEFAULT));
        $jwt = $this->jwtUtil->generateToken($newUser);
        setcookie('jwt', $jwt, time() + 3600, '/');

        $this->tpl->assign('message', 'Register successfully!');
        $this->tpl->assign('page', 'Home');
        // Redirect to the homepage
        header("Location: /?controller=Home");
    }
    public function logOut()
    {
        setcookie('jwt', '', time() - 3600, '/');
        header("Location: /?controller=Home");
    }
}
