<?php

//Literals
$varName = 'lalala';
$varName2 = "lalalala";


//Arrays
$array1 = [1, 3.0, 'lallaa'];
$models = [];


//Object/Class
class Model
{
    protected $name;
    public function __construct($name) {
        $this->name = $name;
    }

    public function getName() {
        return $this->name;
    }

    public function setName($name) {
        $this->name = $name;
    }
}


//Object declaration
$builder = new Builder();


//Includes/Required
require '../ModelDefinitions/ModelClass.php';


//Namespace
namespace MiddlewareGenerator;


//Object instantiation with global namespacing from a namespaced file
$plant = new \Plant(); //referring to classes that are located within the global namespace


//Calling an object method
$model->getNameCapped();


//Concatenation
$basePath = './Middleware/Fcfn' . $model->getNameCapped();


//For loop
for($i=1;$i<$model->getFieldCount();$i++){}


//Foreach
foreach($model->getFieldsForUniqueName() as $value)
foreach($model->getFieldsForUniqueName() as $key=>$value)


//Accessing multidemensional associative array
echo $array1['key1']['key2'];


//Switch
switch ($varToSwitchOn) {
case 'case1':
    //code
    break;
case 'case2':
    //code
    break;
default:
    //code
}


//Ternary if else operator
is_dir($file) ? $this->removeDirectory($file) : unlink($file);

//Echoing with a ternary if else operator
echo ($result) ? 'directory successfully created<br />' : 'errr noes<br />';


//If elseif else
if ($a > $b) {
    echo "a is bigger than b";
} elseif ($a == $b) {
    echo "a is equal to b";
} else {
    echo "a is smaller than b";
}


































