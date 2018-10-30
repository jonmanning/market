<?php

class Market_Knowledgebase_Models_Add extends Market_Core_Models_Abstract {

     public function _construct() {

     }

     public function addPage($input) {
          $resource = Portal::getResourceModel('knowledgebase/content');
          // $input['title']
          $input['title'] = htmlentities($input['title'], ENT_QUOTES);
          // $input['content']
          $input['content'] = htmlentities($input['content'], ENT_QUOTES);
          $resource->insert(array('content' => $input['content']))->runQuery();
          $insertId = mysqli_insert_id($resource->getConnection());

          $resource = Portal::getResourceModel('knowledgebase/meta');
          $resource->insert(array(
                         'category_id'                 => $input['category'],
                         'title'                       => $input['title'],
                         'db_title'                    => $input['db_title'],
                         'author_id'                   => $input['author'],
                         'last_updated_by_id'          => $input['author'],
                         'kb_documents_content_id'     => $insertId
          ))->runQuery();
     }
}
