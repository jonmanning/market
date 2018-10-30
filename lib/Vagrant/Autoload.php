<?php

class Vagrant_Autoload {

     static protected $_instance;

     public function __construct() {

     }

     public static function instance() {
          if(!self::$_instance) {
               self::$_instance = new Vagrant_Autoload();
          }
          return self::$_instance;
     }

     public static function register() {
          spl_autoload_register(array(self::instance(), 'autoload'));
     }

     public function autoload($class) {
          $_path = explode("_", $class);
          include_once implode(DS, $_path) . ".php";
     }
}
