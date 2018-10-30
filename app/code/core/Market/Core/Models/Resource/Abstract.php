<?php

abstract class Market_Core_Models_Resource_Abstract {

     protected $_connections  = array();
     protected $_resources    = array();
     protected $_entities     = array();
     protected $_tables       = array();

     protected $_connection;
     protected $_mainTable;
     protected $_idFieldName;
     protected $_mainTableFields;

     public function __construct() {
          $this->_connections = Portal::getConfig()->get('config/database');
          $this->_setResources();
          $this->_setEntities();
          $this->_setTables();

          $this->_construct();
     }

     protected function _construct() {

     }

     protected function _init($mainTableName, $idFieldName) {
          $this->_setMainTable($mainTableName, $idFieldName);
     }

     protected function _setMainTable($mainTable, $idFieldName = null) {
          $mainTableArr = explode('/', $mainTable);
          $this->_mainTable = $this->_entities[$mainTableArr[0]][$mainTableArr[1]];
          if (empty($idFieldName)) {
               $idFieldName = $mainTableArr[1] . '_id';
          }
          $this->_idFieldName = $idFieldName;
     }

     protected function _setResources() {
          $models = Portal::getConfig()->get('global/models');
          foreach ($models as $key => $model) {
               if (strpos($key, '_resource')) {
                    $this->_resources[substr($key,0,strpos($key,'_'))] = $model;
               }
          }
     }

     protected function _setEntities() {
          foreach ($this->_resources as $key => $resource) {
               if (!isset($this->entities[$key])) {
                    $this->_entities[$key] = array();
               }
               foreach ($resource['entities'] as $k => $entity)
               $this->_entities[$key][$k] = $entity['table'];
          }
     }

     protected function _setTables() {
          foreach ($this->_entities as $entity) {
               foreach ($entity as $key => $table) {
                    $this->_tables[$table] = $key;
               }
          }
     }

     public function getConnection() {
          return $this->_connection;
     }

     public function getId() {
          return $this->_idFieldName;
     }
}
