<?php

class Market_Core_Models_Resource_Countries extends Market_Core_Models_Resource_Resource {

     public function _construct() {
          $this->_init('core/countries', 'country_id');
     }

}
