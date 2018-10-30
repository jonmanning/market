<?php

class Market_Core_Models_Resource_Resource extends Market_Core_Models_Resource_Abstract {

     protected $_query;

     public function _construct() {
          $this->_init('core/resource', 'resource_id');
     }

     public function load($field, $id) {
          if (!isset($this->_query)) {
               $this->_query = $this->getQuery();
          }
          if ($field == 'id') {
               $this->_query .= " WHERE {$this->_idFieldName} = {$id}";
          } else {
               $this->_query .= " WHERE {$field} = {$id}";
          }
          return $this;
     }

     public function save() {

     }

     public function getQuery() {
          if (!isset($this->_connection)) {
               $this->_connection = Portal::getConfig()->getConnection();
          }
          if (empty($this->_query)) {
               $this->select()->from();
               return $this->_query;
          }
          return $this->_query;
     }

     public function runQuery() {
          if (!isset($this->_query) || !isset($this->_connection)) {
               $this->getQuery();
          }
          $results = mysqli_query($this->_connection, $this->_query);
          return $results;
     }

     public function select(array $columns = array()) {
          if (empty($columns)) {
               array_push($columns, '*');
          }
          $this->_query .= 'SELECT ' . implode(' ,', $columns);
          return $this;
     }

     public function from($table = null) {
          if (empty($table)) {
               $table = $this->_mainTable;
          }
          $this->_query .= " FROM {$table}";
          return $this;
     }

     public function where(array $fields = array()) {
          if (empty($fields)) {
               return $this;
          }
          $this->_query .= ' WHERE ';
          $tempArr = array();
          foreach ($fields as $col => $field) {
               array_push($tempArr, $col . ' = ' . "'{$field}'");
          }
          $this->_query .= implode(' AND ', $tempArr);
          return $this;
     }

     public function _and_(array $fields = array()) {
          if (empty($fields)) {
               return $this;
          }
          foreach ($fields as $col => $field) {

          }
     }

     public function _or_(array $fields = array()){

     }

     public function distinct(array $columns = array()) {
          if (empty($columns)) {
               return $this;
          }
          $this->_query = 'SELECT DISTINCT ' . implode(', ', $columns);
          $this->from();
          return $this;
     }

     public function insert(array $values = array()) {
          if (empty($values)) {
               return $this;
          }
          $this->_query .= 'INSERT INTO ' . $this->_mainTable . ' (';

          $cols = array();
          $col_vals = array();

          foreach ($values as $field => $value) {
               array_push($cols, "`{$field}`");
               array_push($col_vals, $value);
          }
          $this->_query .= implode(',',$cols) . ") VALUES ('" . implode("','", $col_vals) . "')";
          return $this;
     }

     public function update(array $values = array()) {
          $this->_query .= 'UPDATE ' . $this->_mainTable . ' SET ';
          $temp = array();
          foreach ($values as $field => $value) {
               array_push($temp, "{$field} = '{$value}'");
          }
          $this->_query .= implode(', ', $temp);
          return $this;
     }

     public function delete() {
          $this->_query .= 'DELETE ';
          $this->from();
          return $this;
     }

     public function orWhere(array $values = array()) {

     }

     public function join($localField, $joinField, $joinTable) {
          if (!isset($this->_query)) {
               $this->select()->from();
          }
          $this->_query .= " JOIN {$joinTable} ON ";
          $this->_query .= "{$this->_mainTable}.{$localField} = {$joinTable}.{$joinField}";
          return $this;
     }

}
