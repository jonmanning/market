<?php

class Market_Core_Models_Resource extends Market_Core_Models_Resource_Abstract {

     protected $_defaultConnection;

     public function _construct() {
          $this->setDefaultConnection();
     }

     public function connect($host = null) {
          $_conn = null;

          if (empty($host) || !isset($this->connections[$host])) {
               $_conn = $this->_defaultConnection;
          } else {
               $_conn = $this->connections[$host];
          }
          $this->_connection = mysqli_connect(
                         $_conn['host'],
                         $_conn['username'],
                         $_conn['password'],
                         $_conn['dbname']
                    );
          return $this->_connection;
     }

     public function setDefaultConnection() {
          if (!isset($this->_defaultConnection)) {
               if (isset($this->_connections['local'])) {
                    $this->_defaultConnection = $this->_connections['local'];
               } elseif (isset($this->_connections['default'])) {
                    $this->_defaultConnection = $this->_connections['default'];
               }
          }
     }

     public function getEntities() {
          return $this->_entities;
     }

     public function getResources($resource = '') {
          if (empty($resource)) {
               return $this->_resources;
          } else {
               $_path = explode('/', $resource);
               $resource = $this->_resources;
          }
          foreach ($_path as $part) {
               $resource = $resource[$part];
          }
          return $resource;
     }

     public function getConnection() {
          if (isset($this->_connection)) {
               return $this->_connection;
          } else {
               return $this->connect();
          }
     }

     public function query($q) {
          mysqli_query($this->_connection, $q);
     }

     public function disconnect() {
          mysqli_close($this->_connection);
     }

     public function getTable() {

     }
}
