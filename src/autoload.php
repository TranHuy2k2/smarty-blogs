<?php
function loader($class)
{
    $classfile = DIR . DS . 'src' . DS . $class . '.php';
    if (file_exists($classfile)) {
        require_once $classfile;
        return;
    }
    foreach (AUTOLOAD_CLASSES as $key => $path) {
        $classfile = $path . $class . '.php';
        if (file_exists($classfile)) {
            require_once $classfile;
        }
    }
}
spl_autoload_register('loader');
