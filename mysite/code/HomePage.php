<?php
class HomePage extends Page {

	private static $db = array(
	  'TwitterURL' => 'Text',
	  'TumblrURL' => 'Text',
	  'InstagramURL' => 'Text',
	  'VimeoURL' => 'Text'
	);

    private static $has_many = array(
      'HomeProjectElements' => 'HomeProjectElement'
    );

	private static $has_one = array(	
	  'MainImage' => 'Image'
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();

	  $uploadField1 = new UploadField($name = 'MainImage', $title = 'Image');
	  $uploadField1->setCanUpload(false);
	  $fields->addFieldToTab('Root.Main', new LiteralField ('literalfield', '<strong>Main Image</strong>'));					
  	  $fields->addFieldToTab('Root.Main', $uploadField1);	

  	  $fields->addFieldToTab('Root.Social', new TextField('TwitterURL', 'Twitter URL'));	
  	  $fields->addFieldToTab('Root.Social', new TextField('TumblrURL', 'Tumblr URL'));	
  	  $fields->addFieldToTab('Root.Social', new TextField('InstagramURL', 'Instagram URL'));	
  	  $fields->addFieldToTab('Root.Social', new TextField('VimeoURL', 'Vimeo URL'));	

      $config = GridFieldConfig_RelationEditor::create();
	  $config->removeComponentsByType('GridFieldPaginator');
	  $config->removeComponentsByType('GridFieldPageCount');	  
	  $config->addComponent(new GridFieldSortableRows('SortID'));

      $projectElementField = new GridField(
        'HomeProjectElements', // Field name
        'Home Project Element', // Field title
        $this->HomeProjectElements(),
        $config
      );
      $fields->addFieldToTab('Root.Elements', $projectElementField); 
						
      return $fields;
    }      

}
class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	
      $this->HomePage = $this;

	  $this->Projects = new ArrayList();
	  foreach(HomeProjectElement::get() as $item) {
	  	$project = DataObject::get_by_id("Page", $item->ProjectID);
		if ($project) {
		  $item->Project = $project;
		  $this->Projects->push($item);       
		}
      }
 	}
	
}
