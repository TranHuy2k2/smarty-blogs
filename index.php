<?php

use app\Loader;

ini_set('display_errors', 1);

// Autoloading:
require_once 'src/constant.php';
// require_once 'src/autoload.php';

require_once 'vendor/autoload.php';

$app_controllers = array('Home', 'Auth', 'Blog', 'Me');
if (!empty($_GET)) {
    if (in_array($_GET['controller'], $app_controllers)) {
        $controller = new Loader($_GET);
        $controller = $controller->createController();
        $controller->executeAction();
    }
}
