<?php

namespace app\config;

use Smarty;

class SmartyTemplate extends Smarty
{
    public function __construct()
    {
        parent::__construct();
        $smarty_path = DIR . DS . 'smarty' . DS;
        $this->setTemplateDir($smarty_path . 'templates');
        $this->setCompileDir($smarty_path . 'templaces_c');
        $this->setCacheDir($smarty_path . 'cache');
        $this->setConfigDir($smarty_path . 'config');
    }
}
