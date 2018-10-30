<?php

class Market_Page_Blocks_Html_Footer extends Market_Core_Blocks_Abstract {

     public function getFooter() {
          return "footer";
     }

     public function getJs($file) {
          $filepath = Portal::getConfig()->getOptions()->getDir('media') . DS . 'js' . DS . $file;
          return $filepath;
     }
}
