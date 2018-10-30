<?php

class Market_Core_Models_Resource_Users extends Market_Core_Models_Resource_Resource {

     public function _construct() {
          $this->_init('core/users', 'user_id');
     }

}
