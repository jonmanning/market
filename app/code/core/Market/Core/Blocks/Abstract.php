<?php

class Market_Core_Blocks_Abstract extends Vagrant_Object {


     protected $_attr      = array();
     protected $_blocks    = array();
     protected $_hasChild  = false;
     protected $_template  = null;
     protected $_params    = array();

     public $_html = '';

     public function __construct(array $data = array()) {
          if (isset($data['@attributes'])) {
               $this->_attr = $data['@attributes'];
               unset($data['@attributes']);
          }

          if (isset($this->_attr['template'])) {
               $this->loadTemplate();
          }

          if (isset($data['block'])) {
               $this->createChildren($data);
          }

          $this->_construct();
     }

     public function _construct() {

     }

     public function loadTemplate() {
          $this->_template = Portal::getTemplate($this->_attr['template']);
     }

     public function createChildren(array $data = array()) {
          if (empty($data)) {
               return;
          }

          foreach ($data['block'] as $child) {
               if (isset($child['name'])) {
                    $child = $data['block'];
               }

               $childName = $child['@attributes']['name'];
               $childCall = $child['@attributes']['type'];

               $this->addBlock($childName, Portal::getBlock($childCall, $child));

               if (!$this->_hasChild) {
                    $this->_hasChild = true;
               }
          }
     }

     public function hasChild() {
          return $this->_hasChild;
     }
     public function getChildBlock($name) {
          if (!isset($this->_blocks[$name])) {
               return false;
          }
          return $this->_blocks[$name];
     }

     public function setChildBlock($name, $node) {
          $this->_blocks[$name] = $node;
     }

     public function appendChildBlock($name, $node) {
          $this->_blocks[$name] = array($this->_blocks[$name]);
          array_push($this->_blocks[$name], $node);
     }

     public function getAllBlocks() {
          return $this->_blocks;
     }

     public function addBlock($name, $obj) {
          if (isset($this->_blocks[$name])) {
               return;
          } else {
               $this->_blocks[$name] = $obj;
          }
     }

     public function getTemplate() {
          return $this->_attr['template'];
     }

     public function setTemplate($value) {
          $this->_attr['template'] = $value;
     }

     public function toHtml() {
          $html = '';
          if (isset($this->_template)) {
               include $this->_template;
          }

          $html .= $this->_toHtml();

          return $html;
     }

     public function _toHtml() {
          $html = '';
          if ($this->_hasChild) {
               foreach ($this->_blocks as $block) {
                    $html .= $block->toHtml();
               }
          }
          return $html;
     }

     public function getChildHtml($name) {
          $html = '';
          if (isset($this->_blocks[$name])) {
               if (is_array($this->_blocks[$name])) {
                    foreach ($this->_blocks[$name] as $block) {
                         $html .= $block->toHtml();
                    }
                    return $html;
               } else {
                    return $this->_blocks[$name]->toHtml();
               }
          }
          return;
     }

     public function getRequest() {
          return Portal::app()->getRequest();
     }

     public function getHtml() {
          return $this->_html;
     }

     public function clearHtml() {
          $this->_html = '';
     }

     public function db_formatted_text($str) {
      $lowerCaseTitle = strtolower($str);
      $nospaceTitle = preg_replace('/\s+/', '_', $lowerCaseTitle);
      return preg_replace('/[^a-z0-9_]/i', '', $nospaceTitle);
    }

    public function error($text) {
         return "<h3>" . $text . "</h3>";
    }
}
