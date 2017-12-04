<?php
class ShopPage extends Page {

	private static $db = array(
	  'Colour' => 'Text'	
	);

    private static $has_many = array(
      'ShopElements' => 'ShopElement'
    );

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
					
	  $fields->addFieldToTab('Root.Main', new TextField('Colour', 'Colour (Hex)'), 'Content');					
							
      $config = GridFieldConfig_RelationEditor::create();
	  $config->removeComponentsByType('GridFieldPaginator');
	  $config->removeComponentsByType('GridFieldPageCount');	  
	  $config->addComponent(new GridFieldSortableRows('SortID'));

      $shopElementField = new GridField(
        'ShopElements', // Field name
        'Shop Element', // Field title
        $this->ShopElements(),
        $config
      );
      $fields->addFieldToTab('Root.Elements', $shopElementField); 

      return $fields;
    }      

}
class ShopPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
