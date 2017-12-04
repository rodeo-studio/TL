<?php
class ProjectElement extends DataObject {
    private static $db = array(
        'Name' => 'Varchar',
        'Size'=>'Int',        
		'SortID'=>'Int',
		'VideoURL' => 'Text',	
		'VideoAutoplay' => 'Boolean',	
		'Content' => 'HTMLText' 
    );
    private static $has_one = array(
        'HeroImage' => 'Image',	
        'Project' => 'ProjectPage'
    );    

  public function FormatSize() { 
    $source = array("25%", "50%", "75%", "100%");

    return $source[$this->Size]; 
  }
	
	// this function creates the thumbnail for the summary fields to use 
	public function ImageThumbnail() { 
		return $this->HeroImage()->SetHeight(100); 
	}

	public function FormatContent() {
		$obj= HTMLText::create();
 		$obj->setValue($this->Content);
		 
		return $obj->FirstSentence(); 
	}
	
	public static $summary_fields = array( 
		'Name' => 'Name',
    'FormatSize' => 'Size',
		'FormatContent' => 'Content', 		
		'ImageThumbnail' => 'Thumbnail' 
	);
	
	private static $default_sort = "SortID ASC";
	
 	function getCMSFields() {
	  $sizeField = new OptionsetField(
   		$name = "Size",
   		$title = "Size",
   		$source = array("25%", "50%", "75%", "100%"),
   	  	$value = 1
	  ); 		
		     
	  $uploadField = new UploadField($name = 'HeroImage', $title = 'Image');
	  $uploadField->setCanUpload(false);
	
   	  $fields = new FieldList (
   	  	new TextField('Name', 'Name'), 
   	  	$sizeField, 
   	  	new LiteralField ('literalfield', '<strong>Image Element</strong>'), 
   	  	$uploadField,
   	  	new LiteralField ('literalfield', '<strong>Video Element</strong>'),
   	  	new TextField('VideoURL', 'Vimeo URL'),
   	  	new CheckboxField('VideoAutoplay', 'Autoplay'), 
   	  	new LiteralField ('literalfield', '<strong>Text Element</strong>'),
   	  	new HtmlEditorField('Content', 'Content'));
	   
   	  return $fields; 
   } 	
}
