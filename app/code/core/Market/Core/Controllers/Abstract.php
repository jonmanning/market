<?php

abstract class Market_Core_Controllers_Abstract {

     private $_request;
     private $_response;

     private $_layout;

     public function __construct(Market_Core_Control_Request $req, Market_Core_Control_Response $resp) {
          $this->_request = $req;
          $this->_response = $resp;

          $this->_construct();
     }

     protected function _construct() {

     }

     public function getLayout() {
          return Portal::getSingleton('core/layout');
     }

     public function loadLayout() {
          if (!isset($this->_layout)) {
               $this->_layout = $this->getLayout();
          }

          $this->_layout->addHandle(str_replace('/', '_', $this->_request->getControllerPath()));
          $this->_layout->init();
     }

     public function renderLayout() {
          echo $this->_layout->getOutput();
     }
}
