<?php
class NewsPage extends Page {

	private static $db = array(
	);

    private static $has_many = array(
      'NewsElements' => 'NewsElement'
    );

	public static $many_many = array(
    );

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();

      // remove fields
      $fields->removeFieldFromTab('Root.Main', 'Content');
					
      $config = GridFieldConfig_RelationEditor::create();
	  $config->addComponent(new GridFieldSortableRows('SortID'));
      $newsElementField = new GridField(
        'NewsElements', // Field name
        'News Element', // Field title
        $this->NewsElements(),
        $config
      );
      $fields->addFieldToTab('Root.Elements', $newsElementField); 
	  
      return $fields;
    }      

}
class NewsPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
