<?php
class AboutPage extends Page {

	private static $db = array(
	  'Colour' => 'Text'	
	);

    private static $has_many = array(
      'PageElements' => 'PageElement'
    );

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
						
	  $fields->addFieldToTab('Root.Main', new TextField('Colour', 'Colour (Hex)'), 'Content');					
				
      $config = GridFieldConfig_RelationEditor::create();
	  $config->addComponent(new GridFieldSortableRows('SortID'));

      $pageElementField = new GridField(
        'PageElements', // Field name
        'Page Element', // Field title
        $this->PageElements(),
        $config
      );
      $fields->addFieldToTab('Root.Elements', $pageElementField); 
						
      return $fields;
    }      

}
class AboutPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
