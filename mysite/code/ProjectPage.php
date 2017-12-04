<?php
class ProjectPage extends Page {

	private static $db = array(
	  'VideoURL' => 'Text',	
	  'VideoAutoplay' => 'Boolean'	
	);

    private static $has_many = array(
      'ProjectElements' => 'ProjectElement'
    );

	public static $many_many = array(
      'Categories' => 'CategoryElement'
    );

	private static $has_one = array(	
	  'MainImage' => 'Image',
	  'FeatureImage' => 'Image'
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();
					
	  $uploadField1 = new UploadField($name = 'MainImage', $title = 'Image');
	  $uploadField1->setCanUpload(false);
	  $fields->addFieldToTab('Root.Main', new LiteralField ('literalfield', '<strong>Main Image</strong>'));					
  	  $fields->addFieldToTab('Root.Main', $uploadField1);	

	  $uploadField2 = new UploadField($name = 'FeatureImage', $title = 'Image');
	  $uploadField2->setCanUpload(false);
	  $fields->addFieldToTab('Root.Main', new LiteralField ('literalfield', '<strong>Feature Image (overrides Main Image when featuring project)</strong>'));					
  	  $fields->addFieldToTab('Root.Main', $uploadField2);	

	  $fields->addFieldToTab('Root.Main', new LiteralField ('literalfield', '<strong>Video Element (overrides Main Image on Project view)</strong>'));					
  	  $fields->addFieldToTab('Root.Main', new TextField('VideoURL', 'Vimeo URL'));	
  	  $fields->addFieldToTab('Root.Main', new CheckboxField('VideoAutoplay', 'Autoplay'));	
	  
      $config = GridFieldConfig_RelationEditor::create();
	  $config->removeComponentsByType('GridFieldPaginator');
	  $config->removeComponentsByType('GridFieldPageCount');
	  $config->addComponent(new GridFieldSortableRows('SortID'));
      $projectElementField = new GridField(
        'ProjectElements', // Field name
        'Project Element', // Field title
        $this->ProjectElements(),
        $config
      );
      $fields->addFieldToTab('Root.Elements', $projectElementField); 
	  
	  $categories = DataObject::get('CategoryElement', 'CategoryID != 0', 'CategoryID asc');
	  if (!empty($categories)) {
	   $fields->addFieldToTab('Root.Main', new CheckboxSetField("Categories", "Select Categories", $categories));			
	  }

      return $fields;
    }      

}
class ProjectPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}

	public function FirstLastPage($Mode = 'first') {
	  if($Mode == 'first'){
   		$Where = "ParentID = ($this->ParentID)"; 
		$Sort = "Sort ASC"; 
	  }
	  elseif($Mode == 'last'){
   		$Where = "ParentID = ($this->ParentID)"; 
		$Sort = "Sort DESC"; 
	  } 
	  else {	
   		return false; 
	  } 
	  return DataObject::get("SiteTree", $Where, $Sort, null, 1);     
	}
		
	public function PrevNextPage($Mode = 'next') {
	  if($Mode == 'next'){ 
   		$Where = "ParentID = ($this->ParentID) AND Sort > ($this->Sort)"; 
		$Sort = "Sort ASC"; 
	  } 
	  elseif($Mode == 'prev'){ 
   		$Where = "ParentID = ($this->ParentID) AND Sort < ($this->Sort)"; 
		$Sort = "Sort DESC"; 
	  } 
	  else{ 
   		return false; 
	  }
	  return DataObject::get("SiteTree", $Where, $Sort, null, 1);     
	}	
	
}
