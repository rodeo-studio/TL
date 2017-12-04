<?php
class ContactPage extends AboutPage {

	private static $db = array(
	  'ContactText' => 'HTMLText',
	  'MapLatitude' => 'Text',
	  'MapLongitude' => 'Text'
	);

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
						
	  $fields->addFieldToTab("Root.Main", new HtmlEditorField('ContactText', 'Contact Text'));
	  
	  $fields->addFieldToTab("Root.Main", new LiteralField ('literalfield', '<strong>Location</strong>'));	  
	  $fields->addFieldToTab("Root.Main", new TextField('MapLatitude', 'Latitude'));
	  $fields->addFieldToTab("Root.Main", new TextField('MapLongitude', 'Longitude'));
						
      return $fields;
    }      

}
class ContactPage_Controller extends AboutPage_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
