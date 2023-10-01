<?php

namespace app\controllers;

use app\config\SmartyTemplate;

abstract class BaseController
{
    protected $url = NULL;
    protected $action = NULL;
    protected $tpl = NULL;

    public function __construct($url, $action)
    {
        $this->url = $url;
        $this->action = $action;
        $this->tpl = new SmartyTemplate();
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
