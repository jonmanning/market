<?php

class Market_Knowledgebase_Models_Category extends Market_Core_Models_Abstract {

     public function getCategories() {
          $resource = Portal::getResourceModel('knowledgebase/category');
          $results = $resource->select()->from()->runQuery();
          $arr = $results->fetch_all(MYSQLI_ASSOC);
          $categories = array();
          foreach ($arr as $row) {
               $categories[$row['category_id']] = $row['category'];
          }
          asort($categories);
          return $categories;
     }
}
