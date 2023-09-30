<?php

/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 11/25/15
 * Time: 8:54 AM
 */
define('DIR', __DIR__);
define('DS', DIRECTORY_SEPARATOR);
define('CONTROLLERS', DIR . DS . 'src' . DS . 'controllers' . DS);
define('MODELS', DIR . DS . 'src' . DS . 'models' . DS);
define('VIEWS', DIR . DS . 'src' . DS . 'views' . DS);
define('CLASSES', DIR . DS . 'src' . DS . 'classes' . DS);

define('AUTOLOAD_CLASSES', array(
    'controllers' => CONTROLLERS,
    'models' => MODELS,
    'views' => VIEWS,
    'classes' => CLASSES
));
