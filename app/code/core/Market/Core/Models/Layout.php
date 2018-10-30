<?php

class Market_Core_Models_Layout extends Vagrant_Simplexml_Element {

     private $_layouts = array();
     private $_templates = array();
     private $_blocks;
     private $_output;
     private $_config;
     private $_handle;

     private $_baseLayoutDir       = 'frontend/base/default/layout';
     private $_baseTemplateDir     = 'frontend/base/default/template';
     private $_defaultTheme;
     private $_theme;
     private $_area;
     // private $_helpers;


     public function __construct() {
          $this->_config = Portal::getConfig();
          $this->_baseLayoutDir = $this->_config->getOptions()->getDir('design') . DS . $this->_baseLayoutDir;
          $this->_baseTemplateDir = $this->_config->getOptions()->getDir('design') . DS . $this->_baseTemplateDir;
          // var_dump($this);

     }

     public function init() {
          $this->_defaultTheme = $this->_config->get('default/design/package/default_theme');
          $this->_theme = $this->_config->get('default/design/package/theme');
          $this->_area = $this->_config->get('default/design/package/area');

          $this->initLayouts();
          $this->_arrangeBlocks();

          // $this->initTemplates();
     }

     public function initLayouts() {
          $files = array_slice(scandir($this->_baseLayoutDir), 2);

          foreach ($files as $file) {
               $this->_layouts = array_merge_recursive(
                         $this->_layouts,
                         $this->loadDomFile($this->_baseLayoutDir . DS . $file)
                    );
          }
     }

     public function initTemplates() {
          foreach ($this->_blocks as $block) {
               if (isset($block['template'])) {
                    $this->_templates[$block['name']] = $block['template'];
               }
          }
     }

     protected function _arrangeBlocks() {
          $treeTop = $this->_layouts[$this->_defaultTheme]['block'];
          $blockName = $treeTop['@attributes']['type'];
          $root = Portal::getBlock($blockName, $treeTop);

     if (!isset($this->_handle) || $this->_handle === 'index_index_index') {
               $this->_handle = 'cms_index_index';
          }
          $contentTree = $this->_layouts[$this->_handle]['block'];
          if (isset($contentTree['@attributes'])) {
               $contentName = $contentTree['@attributes']['type'];
               $root->setContent(Portal::getBlock($contentName, $contentTree));

          } else {
               foreach ($contentTree as $block) {
                    $contentName = $block['@attributes']['type'];
                    if ($root->hasContent()) {
                         $root->appendContent(Portal::getBlock($contentName, $block));
                    } else {
                         $root->setContent(Portal::getBlock($contentName, $block));
                    }
               }
          }
          $this->_blocks = $root;
     }

     public function getLayout() {

     }

     public function addHandle($handle = null) {
          $this->_handle = $handle;
     }

     public function setBlock($block) {

     }

     public function unsetBlock($block) {

     }

     public function createBlock($block) {

     }

     public function addBlock($block) {

     }

     public function getBlock($block) {

     }

     public function getOutput() {
          return $this->_blocks->getOutput();
     }


}
