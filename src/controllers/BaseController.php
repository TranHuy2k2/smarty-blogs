<?php

namespace app\controllers;

abstract class BaseController
{
    private $url = NULL;
    private $action = NULL;
    public function __construct($url, $action)
    {
        $this->url = $url;
        $this->action = $action;
    }
    // Calling the action function
    function executeAction()
    {
        if (!empty($this->action)) {
            return $this->{$this->action}();
        }
    }
    function execView()
    {
    }
}
