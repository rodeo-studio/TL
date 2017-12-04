<?php
class SubscribePage extends AboutPage {

	private static $db = array(
	);

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
						
      return $fields;
    }      

}
class SubscribePage_Controller extends AboutPage_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
