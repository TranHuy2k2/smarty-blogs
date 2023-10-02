<?php

use app\classes\Database;
use app\config\SmartyTemplate;
use app\Loader;
use Dotenv\Dotenv;

ini_set('display_errors', 1);

// Autoloading:
require_once 'src/constant.php';
// require_once 'src/autoload.php';

require_once 'vendor/autoload.php';

$dotenv = Dotenv::createImmutable(__DIR__);
$dotenv->load();


$app_controllers = array('Home', 'Auth', 'Blog', 'Me');
$_GET['controller'] = isset($_GET['controller']) ? $_GET['controller'] : 'Home';
if (!empty($_GET)) {
    if (in_array($_GET['controller'], $app_controllers)) {
        $controller = new Loader($_GET);
        $controller = $controller->createController();
        $controller->executeAction();
    }
}
