<?php

class Market_Core_Models_Config extends Market_Core_Models_Config_Base {

     private $_db;
     protected $_options;
     protected $_resourceModel;
     protected $_isLocalConfigLoaded    = false;
     protected $_modules                = array();
     protected $_templates               = array();


     public function __construct() {
          $this->_options = new Market_Core_Models_Config_Options();
     }

     public function init() {
          $this->loadBase();
          $this->loadModules();
          $this->loadModuleConfigs();
          // $this->loadTemplates();
          $this->loadDatabase();
     }

     public function loadBase() {
          $etcDir = $this->getOptions()->getEtcDir();

          $files = glob($etcDir . DS . '*.xml');
          $this->_config = array_merge_recursive($this->_config, $this->loadDomFile(current($files)));

          while ($file = next($files)) {
               $this->_config = array_merge_recursive($this->_config, $this->loadDomFile($file));
          }

          if (in_array($etcDir . DS . 'local.xml', $files)) {
               $this->_isLocalConfigLoaded = true;
          }
     }

     public function loadDatabase() {
          if (isset($this->_db)) {
               return;
          }
          $this->_db = Portal::getSingleton('core/resource');
          $dbConf = $this->getResourceModel();
     }

     public function getDb() {
          return $this->_db;
     }

     public function getResourceModel() {
          if (is_null($this->_resourceModel)) {
               $this->_resourceModel = Portal::getResourceModel('core/config');
          }
          return $this->_resourceModel;
     }

     public function getOptions() {
          return $this->_options;
     }

     public function getConnection() {
          return $this->_db->getConnection();
     }

     public function getModelInstance($model) {
          $_path = explode('/', $model);
          $className = $this->get("global/models/{$_path[0]}/class");
          $className .= '_' . implode('_', array_map('ucfirst',explode('_', $_path[1])));

          if (class_exists($className)) {
               $obj = new $className;
               return $obj;
          } else {
               return false;
          }
     }

     public function getResourceModelInstance($model = '') {
          $_path = explode('/', $model);
          $className = $this->_db->getResources("{$_path[0]}/class");
          $className .= '_' . implode('_', array_map('ucfirst',explode('_',$_path[1])));

          if (class_exists($className)) {
               $obj = new $className;
               return $obj;
          } else {
               return false;
          }
     }

     public function getBlockInstance($path, $tree) {
          $_path = explode('/', $path);
          $modelName = $this->get("global/blocks/{$_path[0]}/class");
          $modelName .= '_' . implode('_', array_map('ucfirst',explode('_', $_path[1])));

          return new $modelName($tree);
     }

     public function getTemplate($path) {
          $templateDir = $this->getOptions()->getDir('design');
          $templateDir .= DS . $this->get('default/design/package/area') . DS . 'base';
          $templateDir .= DS . $this->get('default/design/package/default_theme');
          $templateDir .= DS . 'template' . DS . str_replace('_', '/', $path);
          return $templateDir;
     }

     public function getBlocks() {
          return $this->get('global/blocks');
     }

     public function loadModules() {
          $modDir = $this->getOptions()->getModDir();
          $files = glob($modDir . DS . '*.xml');
          $first = $modDir . DS . 'Market_All.xml';
          if (in_array($first, $files)) {
               $this->_config = array_merge_recursive($this->_config, $this->loadDomFile($first));
               $files = array_diff($files, array($first));
          }
          $this->_config = array_merge_recursive($this->_config, $this->loadDomfile(current($files)));
          while ($file = next($files)) {
               $this->_config = array_merge_recursive($this->_config, $this->loadDomFile($file));
          }

          foreach($this->_config['modules'] as $key => $module) {
               $this->_modules[$module['codePool']] = array('module' => $key, 'active' => $module['active']);
               $this->_modules[$module['codePool']]['dir'] = $this->getOptions()->getCoreDir() . DS . implode('/',explode('_',$key));
          }
          $this->_config['modules'] = null;
          unset($this->_config['modules']);

          return $this;
     }

     public function loadModuleConfigs() {
          foreach ($this->_modules as $module) {
               $files = glob($module['dir'] . DS . 'etc/*.xml');
               $file = current($files);
               $this->_config = array_merge_recursive($this->_config, $this->loadDomFile($file));
               while($file = next($files)) {
                    $this->_config = array_merge_recursive($this->_config, $this->loadDomFile($file));
               }
          }
          return $this;
     }

     // public function loadTemplates() {
     //      $dir = $this->getOptions()->getDir('design');
     //      $dir .= DS . $this->get('default/design/package/area') . DS . 'base' . DS . $this->get('default/design/package/default_theme') . DS . 'template';
     //
     //
     //      $tree = $this->buildTree($dir, array_slice(scandir($dir),2));
     //
     // }

     public function buildTree($path, array $parent = array()) {
          $temp = array();
          foreach ($parent as $key => $child) {
               if ($child != '.' && $child != '..') {
                    $_path = $path . DS . $child;
                    if (is_dir($_path)) {
                         $temp[$child] = $this->buildTree($_path, array_slice(scandir($_path),2));
                    }
                    if (is_file($_path)) {
                         $temp[substr($child,0,strpos($child,'.'))] = $child;
                    }
               }
          }
          return $temp;
     }
}
