<?php
class CategoryHolderPage extends Page {

	private static $db = array(
	);

    private static $has_many = array(
      'CategoryElements' => 'CategoryElement'
    );

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();

      // remove fields
      $fields->removeFieldFromTab('Root.Main', 'Content');
	  
      $config = GridFieldConfig_RelationEditor::create();
	  $config->addComponent(new GridFieldSortableRows('SortID'));
      $categoryElementField = new GridField(
        'CategoryElements', // Field name
        'Category Element', // Field title
        $this->CategoryElements(),
        $config
      );
      $fields->addFieldToTab('Root.Main', $categoryElementField); 
						
      return $fields;
    }      

}
class CategoryHolderPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
