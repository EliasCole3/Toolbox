<?php

// $path = 'C:/wamp/www/MiddlewareAbstraction/Middleware/FcfnPlant';
$path = 'C:/Users/eliasc/workspace/app-berrystack/module/FcfnPlant';

function listDirContents($path) {
    $files = glob($path . '/*');
    foreach ($files as $file) {
     listDirContents($file);
    }
    if(filetype($path) !== "dir") {
      echo $path . " \r\n ";
    }
    return;
  }
  
listDirContents($path);