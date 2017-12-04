<?php
class ProjectsPage extends Page {
    static $allowed_children = array("ProjectPage");

	private static $db = array(
	);

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
						
      return $fields;
    }      

}
class ProjectsPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
