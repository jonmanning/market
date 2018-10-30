<?php

class Market_Knowledgebase_Models_Resource_Content extends Market_Core_Models_Resource_Resource {

     public function _construct() {
          $this->_init('knowledgebase/content', 'kb_documents_content_id');
     }
}
