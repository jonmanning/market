<?php

class Market_Core_Models_Config_Base extends Vagrant_Simplexml_Element{

     protected $_config = array();

     public function set($path, $value) {
          $uri = explode("/", $path);
          $front = false;
          $back = false;
          foreach ($uri as $part) {
               $front .= '{ "' . $part . '" : ';
               $back = " }" . $back;
          }
          $new = json_decode($front . '"' . $value . '"' . $back, 1);
          $this->_config = array_merge_recursive($this->_config, $new);
     }

     public function get($path) {
          $_path = explode("/", $path);
          $_data = false;
          try {
               foreach ($_path as $part) {
                    if (!$_data) {
                         if (isset($this->_config[$part])) {
                              $_data = $this->_config[$part];
                         }
                    } else {
                         if (isset($_data[$part])) {
                              $_data = $_data[$part];
                         } else {
                              return false;
                         }
                    }
               }
               if (empty($_data)) {
                    return false;
               } else {
                    return $_data;
               }
          } catch (Exception $e) {
               return false;
          }
     }

     // public function getBaseUrl() {
     //      return $_SERVER['SERVER_NAME'];
     // }
}
