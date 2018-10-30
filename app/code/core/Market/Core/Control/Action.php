<?php

class Market_Core_Control_Action {

     private $_action         = null;
     private $_router         = null;
     private $_request        = null;
     private $_response       = null;
     private $_controller     = null;

     public function __construct() {
          $this->init();
     }

     public function init() {
          if (!isset($this->_router)) {
               $this->_router = $this->_initRouter();
          }
          $this->initRequest();
          $this->initResponse();

          $this->initController();

          $action = $this->_request->getAction() . 'Action';
          if (method_exists($this->_controller, $action)) {
               $this->_controller->$action();
          }
     }

     private function _initRouter() {
          if (isset($this->_router)) {
               return $this->_router;
          }
          $router = new Market_Core_Control_Router(Portal::getConfig());
          $router->collectRoutes();
          return $router;
     }

     private function _initRequest() {
          if (!isset($this->_request)) {
               $this->_request = new Market_Core_Control_Request();
          }
     }

     public function initRequest() {
          $this->_initRequest();
          $this->_request->setRequest($this->getCurrentUrl());
     }

     public function initController() {
          $className = $this->_router->getClassByPath($this->_request->getControllerPath());

          $this->_controller = Portal::getControllerInstance($className, $this->_request, $this->_response);
     }

     private function _initResponse() {
          if (!isset($this->_response)) {
               $this->_response = new Market_Core_Control_Response();
          }
     }

     public function initResponse() {
          $this->_initResponse();
     }

     public function getCurrentUrl() {
          return $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
     }

     public function getRequest() {
          return $this->_request;
     }

     public function getResponse() {
          return $this->_response;
     }

     public function getRouter() {
          return $this->_router;
     }

     public function renderOutput() {
          include($this->get('theme/file'));
          // $this->log->entry("Created UI environment.");
     }
}
