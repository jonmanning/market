<?php

class Market_Page_Blocks_Html extends Market_Core_Blocks_Abstract {

     private $_handle;

     public function get($type) {

     }

     public function setContent($block) {
          $this->setChildBlock('content', $block);
     }

     public function appendContent($block) {
          $this->appendChildBlock('content', $block);
     }

     public function hasContent() {
          if (!isset($this->_blocks['content'])) {
               return false;
          }
          return true;
     }

     public function setType() {

     }

     public function getType() {

     }

     public function setName() {

     }

     public function getName() {

     }

     public function setOutput() {

     }

     public function getOutput() {
          // var_dump($this);
          include $this->_template;
     }

     public function setHandle($handle = '') {
          if (empty($handle)) {
               $this->_handle = 'cms_index_index';
          } else {
               $this->_handle = $handle;
          }
     }

     public function getHandle() {
          return $this->_handle;
     }

     public function getAbsoluteFooter() {
          return "Absolute Footer";
     }

     public function getBodyClass() {

     }
}
