<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();

      return $fields;
    }      

}
class Page_Controller extends ContentController {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	  
      // get home
      $this->HomePage = $this;
      if ($this->ClassName != 'HomePage') {
        $this->HomePage = DataObject::get_one("HomePage");      
      }        	  
	}
		
}
