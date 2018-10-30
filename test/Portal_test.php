<?php

include '../app/code/core/Market/Core/Models/App.php';
include '../app/Portal.php';

     echo "Instantiating App class";
try {
     $app = new Market_Core_Models_App();
     var_dump($app);
} catch (Exception $e) {
     var_dump($e);
}
echo "--------------";

echo "Testing init() method";
try {
     $app->init();
     var_dump($app);
} catch (Exception $e) {
     var_dump($e);
}
echo "--------------";
