<?php

class Market_Core_Models_Resource_Config extends Market_Core_Models_Resource_Resource {

     public function _construct() {
          $this->_init('core/config', 'config_id');
     }
}
