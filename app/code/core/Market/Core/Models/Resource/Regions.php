<?php

class Market_Core_Models_Resource_Regions extends Market_Core_Models_Resource_Resource {

     public function _construct() {
          $this->_init('core/regions', 'region_id');
     }
}
