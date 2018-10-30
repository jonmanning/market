<?php

class Market_Core_Models_Config_Options {

     const VAR_DIR = 'var';

     protected $_dir = array();

     public function __construct() {
          $appRoot = Portal::getRoot();
          $root = dirname($appRoot);

          $this->_dir['base_dir']      = $root;
          $this->_dir['base_url']      = '';
          $this->_dir['app_dir']       = $appRoot;

          $this->_dir['code_dir']      = $appRoot . DS . 'code';
          $this->_dir['design_dir']    = $appRoot . DS . 'design';

          $this->_dir['media_dir']     = $this->_dir['base_url'] . DS . 'media';
          $this->_dir['css_dir']       = $this->_dir['media_dir'] . DS . 'css';
          $this->_dir['js_dir']        = $this->_dir['base_url'] . DS . 'js';
          $this->_dir['images_dir']    = $this->_dir['media_dir'] . DS . 'images';

          $this->_dir['etc_dir']       = $appRoot . DS . 'etc';
          $this->_dir['mod_dir']       = $this->_dir['etc_dir'] . DS . 'modules';
          $this->_dir['core_dir']      = $this->_dir['code_dir'] . DS . 'core';
          $this->_dir['lib_dir']       = $root . DS . 'lib';
          $this->_dir['var_dir']       = $this->getVarDir();
          $this->_dir['log_dir']       = $this->_dir['var_dir'] . DS . 'log';
     }

     public function getDir($type) {
          $method = 'get' . ucwords($type) . 'Dir';
          $dir = $this->$method();
          if (!$dir) {
               throw Portal::exception('Market_Core', 'Invalid dir type requested: ' . $type);
          }
          return $dir;
     }

     public function getAppDir() {
          return $this->_dir['app_dir'];
     }

     public function getBaseDir() {
          return $this->_dir['base_dir'];
     }

     public function getCodeDir() {
          return $this->_dir['code_dir'];
     }

     public function getDesignDir() {
          return $this->_dir['design_dir'];
     }

     public function getMediaDir() {
          return $this->_dir['media_dir'];
     }

     public function getCssDir() {
          return $this->_dir['css_dir'];
     }

     public function getJsDir() {
          return $this->_dir['js_dir'];
     }

     public function getImagesDir() {
          return $this->_dir['images_dir'];
     }

     public function getEtcDir() {
          return $this->_dir['etc_dir'];
     }

     public function getModDir() {
          return $this->_dir['mod_dir'];
     }

     public function getCoreDir() {
          return $this->_dir['core_dir'];
     }

     public function getLibDir() {
          return $this->_dir['lib_dir'];
     }

     public function getSysTmpDir() {
          return sys_get_temp_dir();
     }

     public function getVarDir() {
          $dir = isset($this->_dir['var_dir']) ? $this->_dir['var_dir'] : $this->_dir['base_dir'] . DS . self::VAR_DIR;
          if (!$this->createDirIfNotExists($dir)) {
               $dir = $this->getSysTmpDir() . DS . 'market' . DS . 'var';
               if (!$this->createDirIfNotExists($dir)) {
                    throw new Exception('Unable to find writable var_dir');
               }
          }
          return $dir;
     }

     public function getLogDir() {
          $dir = $this->_dir['log_dir'];
          $this->createDirIfNotExists($dir);
          return $dir;
     }

     public function createDirIfNotExists($dir) {
          if (!empty($this->_dir[$dir])) {
               return true;
          }
          if (file_exists($dir)) {
               if (!is_dir($dir)) {
                    return false;
               }
               if (!is_writeable($dir)) {
                    return false;
               }
          } else {
               $oldUmask = umask(0);
               if (!@mkdir($dir, 0777,true)) {
                    return false;
               }
               umask($oldUmask);
          }
          return true;
     }

     protected function _dirExists($dir) {
          if (isset($this->_dir[$dir]) && $this->createDirIfNotExists($dir)) {
               return true;
          }
          return false;
     }
}
