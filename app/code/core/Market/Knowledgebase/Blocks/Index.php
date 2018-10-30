<?php

class Market_Knowledgebase_Blocks_Index extends Market_Core_Blocks_Abstract {

     public function getDirectory() {
          $catalog = Portal::getModel('knowledgebase/meta')->getCatalog();
          if (empty($catalog)) {
               return;
          }
          $directory = array();
          foreach ($catalog as $entry => $arr) {
               if (!isset($directory[$entry])) {
                    $directory[$entry] = array();
               }
               foreach ($arr as $title => $db_title) {
                    $directory[$entry][$db_title] = "<a href='/knowledgebase/view/index/db_title/" . $db_title . "' class='guidelink'>" . $title . "</a><br>";
               }
          }
          return $directory;
     }
}
