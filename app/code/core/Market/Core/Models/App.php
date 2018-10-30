<?php

class Market_Core_Models_App {

     // const DEFAULT_TIMEZONE = 'UTC';

     private $_config;
     private $_action;
     private $_response;
     private $_request;
     private $_design;
     private $_layout;

     public function __construct() {

     }

     public function init() {
          $this->_config = Portal::getConfig();
     }

     public function run() {
          $this->_initBase();
          $this->_initAction();
          $this->_request = $this->_action->getRequest();
          $this->_response = $this->_action->getResponse();
          $this->_action->initRequest();
     }

     public function _initBase() {
          $this->_config = Portal::getconfig();
          $this->_config->init();
     }

     private function _initAction() {
          if (isset($this->_action)) {
               return;
          }
          $this->_action = new Market_Core_Control_Action();
     }

     public function getRequest() {
          if (!isset($this->_request)) {
               return new Market_Core_Control_Request();
          }
          return $this->_request;
     }

     public function setRequest(Market_Core_Control_Request $req) {
          $this->_request = $req;
          return $this;
     }

     public function getResponse() {
          if (empty($this->_response)) {
               $this->_response = new Market_Core_Control_Response();
          }
          return $this->_response;
     }

     public function setResponse(Market_Core_Control_Response $resp) {
          $this->_response = $response;
          return $this;
    }

     public function getBaseUrl() {
          return $_SERVER['SERVER_NAME'];
     }
}
