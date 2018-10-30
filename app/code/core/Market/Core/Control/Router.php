<?php

class Market_Core_Control_Router {

     protected $_config       = null;
     protected $_routes       = array();
     protected $_pages        = array();
     protected $_frontNames   = array();
     protected $_controllers  = array();

     /**
     *
     */
     public function __construct($config) {
          $this->_config = $config;
     }

     public function getConfig() {
          return $this->_config;
     }

     public function initPages() {
          $page_dir = $this->_config->getOptions()->getDir('pages');
          foreach (scandir($page_dir) as $page) {
               if ($page != '.' && $page != '..') {
                    $this->_pages[substr($page,0,strpos($page,'.'))] = $page;
               }
          }
     }

     public function collectRoutes() {
          $routes = array('frontend');
          foreach($routes as $route) {
               switch($route) {
                    case 'frontend':
                         foreach ($this->_config->get("{$route}/routes") as $key => $value) {
                              $this->_routes[$key] = $value;
                              foreach ($value['args'] as $k => $v) {
                                   $this->_frontNames[$key][$k] = $v;
                              }
                         }
                         break;
               }
          }

          foreach ($this->_frontNames as $front ) {
               $this->_controllers[$front['frontName']] = array();
               $ctrl_dir = $this->_config->getOptions()->getDir('core') . DS . str_replace('_', '/', $front['module']);
               if (is_dir($ctrl_dir . DS . 'Controllers')) {
                    foreach (scandir($this->_config->getOptions()->getDir('core') . DS . str_replace('_', '/', $front['module']) . DS . 'Controllers') as $file) {
                         if ($file != '.' && $file != '..') {
                              if (substr($file, -3) === 'php') {
                                   $f = strtolower(substr($file, 0, strpos($file, '.')));
                                   $ctrl[$f] = array();
                                   $methods = get_class_methods("{$front['module']}_Controllers_" . substr($file, 0, strpos($file, '.')));

                                   foreach ($methods as $method) {
                                        if (strpos($method, 'Action')) {
                                             $ctrl[$f][substr($method, 0, strpos($method, "Action"))] = $method;
                                        }
                                   }
                                   $this->_controllers[$front['frontName']] = array_merge_recursive($ctrl);
                              }
                         }
                    }
               }
          }
     }

     public function getControllers() {
          return $this->_controllers;
     }

     public function getControllersByModule($module) {
          if (!isset($this->_controllers[$module])) {
               return false;
          }
          return $this->_controllers[$module];
     }

     public function getControllerActions($path) {
          $uri = explode('/', $path);
          $_data = null;

          foreach ($uri as $part) {
               if (isset($_data)) {
                    if (isset($_data[$part])) {
                         $_data = $_data[$part];
                    } else {
                         return false;
                    }
               } else {
                    if (isset($this->_controllers[$part])) {
                         $_data = $this->_controllers[$part];
                    } else {
                         return false;
                    }
               }
          }
          return $_data;
     }

     public function getClassByPath($path) {
          $_path = explode('/', $path);
          $mod = array_shift($_path);
          if ($mod === 'index') {
               $mod = 'cms';
          }
          $class = $this->_frontNames[$mod]['module'];

          $class .= '_Controllers_' . ucfirst(array_shift($_path));
          return $class;

     }

     public function getActionByPath($path) {
          $_path = array_slice(explode('/', $path), 2, 1);
          $action = array_pop($_path) . 'Action';
          return $action;
     }

}
