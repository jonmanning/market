<?php

class Market_Knowledgebase_Models_View extends Market_Core_Models_Abstract {

     public function load($key, $value) {
          if ($key === 'id') {
               return $this->loadByID($value);
          }
     }

     public function loadByDbTitle($value) {
          $model = Portal::getResourceModel('knowledgebase/meta');
          $model = $model->join(
                         'kb_documents_content_id',
                         'kb_documents_content_id',
                         'kb_documents_content'
                    )->join(
                         'category_id',
                         'category_id',
                         'kb_documents_category'
                    )->join(
                         'author_id',
                         'user_id',
                         'core_users'
                    )->where(array('db_title' => $value))->runQuery();
          return $model->fetch_all(MYSQLI_ASSOC)[0];
     }

     public function loadById($value) {
          $model = Portal::getResourceModel('knowledgebase/meta');
          $model = $model->join(
                         'kb_documents_content_id',
                         'kb_documents_content_id',
                         'kb_documents_content'
                    )->join(
                         'category_id',
                         'category_id',
                         'kb_documents_category'
                    )->join(
                         'author_id',
                         'user_id',
                         'core_users'
                    )->load($model->getId(), $value)->runQuery();
          return $model->fetch_all(MYSQLI_ASSOC)[0];
     }

     public function updatePage($input) {
          $model = Portal::getResourceModel('knowledgebase/meta')
                    ->update(array(
                         'category_id'  => $input['category_id'],
                         'title'        => $input['title'],
                         'db_title'     => $input['db_title'],
                         'author_id'    => $input['author_id']
                    ))->load('id', $input['kb_documents_meta_id'])->runQuery();

          $model = Portal::getResourceModel('knowledgebase/content')
                    ->update(array(
                         'content' => $input['content']
                    ))->load('id', $input['kb_documents_content_id'])->runQuery();
          return;
     }

     public function deletePage($input) {
          $model = Portal::getResourceModel('knowledgebase/meta')
                    ->delete()->load('id', $input['kb_documents_meta_id'])->runQuery();

          $model = Portal::getResourceModel('knowledgebase/content')
                    ->delete()->load('id',$input['kb_documents_content_id'])->runQuery();
     }
}
