<?php

class Market_Knowledgebase_Blocks_Add extends Market_Core_Blocks_Abstract {

     public function getCategoryList() {
          $this->clearHtml();
          $model = Portal::getModel('knowledgebase/category');
          $results = $model->getCategories();
          $this->_html .= '<option value="">Category</option>';
          if (empty($results)) {
               return $this->getHtml();
          }
          foreach ($results as $key => $value) {
               $this->_html .= '<option value="'. $key . '">' . $value . '</option>';
          }
          return $this->getHtml();
     }

     public function getAuthors() {
          $this->clearHtml();
          $model = Portal::getModel('knowledgebase/meta');
          $results = $model->getAuthors();
          $this->_html .= '<option value="">Authors</option>';

          foreach ($results as $key => $value) {
               $this->_html .= '<option value="'. $key . '">' . $value . '</option>';
          }
          return $this->getHtml();
     }

     public function addPage($input) {
          $model = Portal::getModel('knowledgebase/add')->addPage($input);
     }

     public function checktitle($title) {
          return Portal::getModel('knowledgebase/meta')->checkTitle($title);

     }
}
