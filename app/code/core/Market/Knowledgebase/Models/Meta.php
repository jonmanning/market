<?php

class Market_Knowledgebase_Models_Meta extends Market_Core_Models_Abstract {

     public function getAuthors() {
          $resource = Portal::getResourceModel('core/users');
          $results = $resource->select(array('user_id','full_name'))->from()->runQuery();
          $arr = $results->fetch_all(MYSQLI_ASSOC);
          $authors = array();
          foreach ($arr as $row) {
               $authors[$row['user_id']] = $row['full_name'];
          }
          asort($authors);
          return $authors;
     }

     public function getCatalog() {
          $resource = Portal::getResourceModel('knowledgebase/meta');
          $results = $resource->distinct(array('title','db_title','category'))
                    ->join('category_id','category_id','kb_documents_category')->runQuery();
          if(empty($results)) {
               return;
          }
          $arr = $results->fetch_all(MYSQLI_ASSOC);
          $catalog = array();
          foreach ($arr as $row) {
               if (!isset($catalog[$row['category']])) {
                    $catalog[$row['category']] = array();
               }
               $catalog[$row['category']][$row['title']] = $row['db_title'];
          }
          return $catalog;
     }

     public function checkTitle($title) {
          $resource = Portal::getResourceModel('knowledgebase/meta');
          $results = $resource->select()->where(array('db_title' => $title))->runQuery();
          if (!$results) {
               return true;
          } else {
               return false;
          }
     }
}
