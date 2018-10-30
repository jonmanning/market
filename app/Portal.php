<?php

define('DS', DIRECTORY_SEPARATOR);
define('PS', PATH_SEPARATOR);
define('BP', dirname(dirname(__FILE__)));

Portal::register('original_include_path', get_include_path());

$paths = array();
$paths[] = BP . DS . 'app' . DS . 'code' . DS . 'core';
$paths[] = BP . DS . 'lib';

$appPath = implode(PS, $paths);
set_include_path($appPath . PS . Portal::registry('original_include_path'));
include_once 'Vagrant/Autoload.php';

Vagrant_Autoload::register();


final class Portal {

     static private $_registry = array();
     static private $_appRoot;
     static private $_app;
     static private $_config;


     public static function reset() {
          self::$_registry    = array();
          self::$_appRoot     = null;
          self::$_app         = null;
          self::$_config      = null;

     }

     public static function app() {
          if (null === self::$_app) {
               self::$_app = new Market_Core_Models_App();
               self::setRoot();
               self::_setConfig();
               self::$_app->init();
          }
          return self::$_app;
     }

     public static function init() {
          try {
               self::setRoot();
               self::$_app = new Market_Core_Models_App();
               self::_setConfig();
               self::$_app()->init();
          } catch (Exception $e) {
               self::printException($e);
               die();
          }
     }

     public static function run() {
          try {
               self::setRoot();
               self::$_app = new Market_Core_Models_App();
               self::_setConfig();
               self::$_app->run();

          } catch(Exception $e) {
               self::printException($e);
               die();
          }
     }

     protected static function _setConfig() {
          self::$_config = new Market_Core_Models_Config();
     }

     public static function registry($key) {
          if (isset(self::$_registry[$key])) {
               return self::$_registry[$key];
          }
          return null;
     }

     public static function register($key, $value) {
          if(isset(self::$_registry[$key])) {
               return;
          }
          self::$_registry[$key] = $value;
     }

     public static function unregister($key) {
          if (isset(self::$_registry[$key])) {
               if (is_object(self::$_registry[$key]) && (method_exists(self::$_registry[$key], '__destruct'))) {
                    self::$_registry[$key]->__destruct();
               }
               unset(self::$_registry[$key]);
          }
     }

     public static function setRoot($appRoot = '') {
          if (self::$_appRoot) {
               return;
          }
          if ('' === $appRoot) {
               $appRoot = dirname(__FILE__);
          }

          $appRoot = realpath($appRoot);

          if (is_dir($appRoot) && is_readable($appRoot)) {
               self::$_appRoot = $appRoot;
          } else {
               self::throwException($appRoot . ' is not a directory or not readable by this user');
          }
     }

     public static function getRoot() {
          return self::$_appRoot;
     }

     public static function getBaseDir($type = 'base') {
          return self::getConfig()->getOptions()->getDir($type);
     }

     public static function getModuleDir($type, $module) {
          return self::getConfig()->getModuleDir($type, $module);
     }

     public static function getBaseUrl() {
          return self::$_app->getBaseUrl();
     }

     public static function getUrl($route = '', $params = array()) {
          return self::getModel('core/url')->getUrl($route, $params);
     }

     public static function getModel($model = '') {
          return self::getConfig()->getModelInstance($model);
     }

     public static function getBlock($block = '', array $tree = array()) {
          return self::getConfig()->getBlockInstance($block, $tree);
     }

     public static function getTemplate($template = '') {
          return self::getConfig()->getTemplate($template);
     }

     public static function getSingleton($modelClass='')
     {
         $registryKey = '_singleton/'.$modelClass;
         if (!self::registry($registryKey)) {
            self::register($registryKey, self::getModel($modelClass));
         }
         return self::registry($registryKey);
    }

     public static function getControllerInstance($class, $request, $response) {
          if (class_exists($class)) {
               return new $class($request, $response);
          } else {
               return;
          }
     }

     public static function getResourceModel($resourceName) {
          return self::getConfig()->getResourceModelInstance($resourceName);
     }

     public static function getConfig() {
          return self::$_config;
     }

     public static function throwException($message) {
          throw new Exception($message);
     }

     public static function printException(Exception $e) {
          print $e->getMessage() . "\n\n";
          print $e->getTraceAsString();
     }
}
