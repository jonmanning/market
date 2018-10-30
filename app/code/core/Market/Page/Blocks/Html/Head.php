<?php

class Market_Page_Blocks_Html_Head extends Market_Core_Blocks_Abstract {

     public function getSiteTitle() {
          return "Market New Site 2.1 Awsome Sauze";
     }

     public function getCss() {
          return Portal::getConfig()->getOptions()->getDir('css') . DS . 'style.css';
     }

     public function getJs($file) {
          $filepath = Portal::getConfig()->getOptions()->getDir('js') . DS . $file;
          return $filepath;
     }
}
