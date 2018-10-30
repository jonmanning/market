<?php

class Market_Page_Blocks_Html_Nav extends Market_Core_Blocks_Abstract {

	public function getBanner() {
         return Portal::getConfig()->getOptions()->getDir('images') . DS . 'Market-logo-white.png';
    }

}
