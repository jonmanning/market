<?php

class Market_Core_Models_Abstract extends Vagrant_Object {

     protected $_data;
     protected $_db;


     public function __construct() {
          $this->_db = Portal::getConfig()->getDb();

          $this->_construct();
     }

     public function _construct() {

     }
}
