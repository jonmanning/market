<?php

class Market_Core_Control_Request {

     private $_data = array();

     private $_module;
     private $_controller;
     private $_action;

     private $_url;
     private $_params = array();


     public function __construct($url = '') {
          $this->_data   = array(
                              'scheme'  => $_SERVER['REQUEST_SCHEME'],
                              'host'    => $_SERVER['SERVER_NAME'],
                              'path'    => $_SERVER['REQUEST_URI']
                           );

          $this->init($url);
     }

     public function init($url) {
          if (empty($url)) {
               $this->_url = $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
          }
          $temp = parse_url($url);
          if (isset($temp['host']) && $temp['host'] === $_SERVER['SERVER_NAME']) {
               $this->_data = $temp;
          }
          $this->_setActionStruct();
     }

     private function _setActionStruct() {
          $curPath = $this->_data['path'];
          if (substr($curPath,0,1) === '/') {
               $curPath = ltrim($curPath,'/');
          }

          $_path = explode('/', $curPath);

          if (isset($_path[0]) && !empty($_path[0])) {
               $this->setModule($_path[0]);
          } else {
               $this->setModule();
          }

          if (isset($_path[1]) && !empty($_path[1])) {
               $this->setController($_path[1]);
          } else {
               $this->setController();
          }

          if (isset($_path[2]) && !empty($_path[2])) {
               $this->setAction($_path[2]);
          } else {
               $this->setAction();
          }

          $this->setParams($_path);
     }

     public function getControllerPath() {
          return "{$this->_module}/{$this->_controller}/{$this->_action}";
     }

     public function setRequest($url = '') {
          $this->init($url);
     }

     public function getRequest() {
          return $this->_url;
     }

     public function reset($module = null, $controller = null, $action = null) {
          $this->_module      = $module;
          $this->_controller  = $controller;
          $this->_action      = $action;
     }

     public function setModule($mod = null) {
          if (empty($mod)) {
               $this->_module = 'cms';
          } else {
               $this->_module = $mod;
          }
     }

     public function getModule() {
          return $this->_module;
     }

     public function setController($ctrl = null) {
          if (empty($ctrl)) {
               $this->_controller = 'index';
          } else {
               $this->_controller = $ctrl;
          }
     }

     public function getController() {
          return $this->_controller;
     }

     public function setAction($action = null) {
          if (empty($action)) {
               $this->_action = 'index';
          } else {
               $this->_action = $action;
          }
     }

     public function getAction() {
          return $this->_action;
     }

     public function setScheme($scheme = '') {
          if ($scheme === 'http' || $scheme === 'https') {
               $this->_data['scheme'] = $scheme;
          } else {
               $this->_data['scheme'] = $_SERVER['REQUEST_SCHEME'];
          }
     }

     public function getScheme() {
          if (!isset($this->_data['scheme'])) {
               $this->_data['scheme'] = $_SERVER['REQUEST_SCHEME'];
          }
          return $this->_data['scheme'];
     }

     public function setHost($hostname = '') {
          if (empty($hostname)) {
               $this->_data = $_SERVER['SERVER_NAME'];
          } else {
               $this->_base_url = $url;
          }
     }

     public function getHost() {
          if (empty($this->_base_url)) {
               $this->_base_url = $_SERVER['SERVER_NAME'];
          }
          return $this->_base_url;
     }

     public function setPath($path = '') {
          $this->_data['path'] = $path;
     }

     public function getPath() {
          return $this->_data['path'];
     }

     public function setParams(array $path = array()) {
          if (empty($path) || sizeof($path) <= 3) {
               return;
          }
          $this->_params = array_slice($path, 3);
     }

     public function getParams() {
          return $this->_params;
     }

     public function redirect($path = '') {
          $this->setPath($path);
     }
}
