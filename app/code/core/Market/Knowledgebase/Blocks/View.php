<?php

class Market_Knowledgebase_Blocks_View extends Market_Core_Blocks_Abstract {

     public function _construct() {
          $this->_params = $this->getRequest()->getParams();
     }

     public function loadByDbTitle($value) {
          if (empty($value)) {
               return;
          }
          $model = Portal::getModel('knowledgebase/view');
          return $model->loadByDbTitle($value);

     }

     public function getParams() {
          return $this->_params;
     }

     public function load($key, $value) {
          $model = Portal::getModel('knowledgebase/view');
          switch ($key) {
               case 'id':
                    return $model->load($key,$value);
               case 'db_title':
                    return $model->loadByDbTitle($value);
               default:
                    return;
          }
     }

     public function getCategories($category) {
          $this->clearHtml();
          $model = Portal::getModel('knowledgebase/category');
          $results = $model->getCategories();

          foreach ($results as $id => $cat) {
               if ($category !== $cat) {
                    $this->_html .= '<option value="'. $id . '">' . $cat . '</option>';
               } else {
                    $this->_html = '<option value="'. $id . '">' . $cat . '</option>' . $this->_html;
               }
          }
          return $this->getHtml();
     }

     public function getAuthors($author) {
          $this->clearHtml();
          $model = Portal::getModel('knowledgebase/meta');
          $results = $model->getAuthors();

          foreach ($results as $id => $name) {
               if ($author !== $name) {
                    $this->_html .= '<option value="'. $id . '">' . $name . '</option>';
               } else {
                    $this->_html = '<option value="' . $id .'">' . $name . '</option>' . $this->_html;;
               }
          }
          return $this->getHtml();
     }

     public function updatePage($input) {
          $model = Portal::getModel('knowledgebase/view');
          $model->updatePage($input);
          return;
     }

     public function deletePage($input) {
          $model = Portal::getModel('knowledgebase/view')->deletePage($input);
     }
}
