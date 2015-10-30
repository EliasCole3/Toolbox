<?php
require_once 'Inflector.php';
$inflector = new \Inflector();

foreach($argv as $value)
{
    if($value !== "TestInflector.php") //I don't really know how $argv works...
    {
        echo  $value . '   ' . $inflector->pluralize($value) . '
';
    }
}
