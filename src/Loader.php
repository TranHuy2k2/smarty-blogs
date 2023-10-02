<?php

namespace app;
// Class loader for application controllers
class Loader
{
    private $url = NULL;
    private $controller = NULL;
    private $action = NULL;
    private $controllerNameSpace = 'app\controllers\\';

    public function __construct($url)
    {
        if (!empty($_GET)) {
            $this->url = $_GET;
        }

        if (isset($this->url['controller'])) {
            $this->controller = $this->controllerNameSpace . $this->url['controller'];
        } else {
            $this->controller = $this->controllerNameSpace . 'Home';
        }

        if (isset($this->url['action'])) {
            $this->action = $this->url['action'];
        } else {
            $this->action = 'index';
        }
    }
    function createController()
    {
        if (!class_exists($this->controller)) {
            throw new \Exception("Controller {$this->controller} does not exist");
            return;
        }
        // Check if this class is a child of BaseController
        $parent = class_parents($this->controller);
        if (!in_array($this->controllerNameSpace . 'BaseController', $parent)) {
            throw new \Exception("Controller doesn't inherit BaseController");
            return;
        }
        // Check if the method exist inside this controller
        if (!method_exists($this->controller, $this->action)) {
            throw new \Exception("Method {$this->action} doesn't exist on {$this->controller}");
        }
        return new $this->controller($this->url, $this->action);
    }
}
