<?php
class PageElement extends DataObject {
    private static $db = array(
        'Name' => 'Varchar',
        'TextStyle'=>'Int',
		'SortID'=>'Int',
		'Content' => 'HTMLText'
    );
    private static $has_one = array(
        'HeroImage' => 'Image',	
        'Page' => 'AboutPage'
    );    
	
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
		'FormatContent' => 'Content', 		
		'ImageThumbnail' => 'Thumbnail' 
	);
	
	private static $default_sort = "SortID ASC";
	
 	function getCMSFields() {
	  $textField = new OptionsetField(
   		$name = "TextStyle",
   		$title = "Text Style",
   		$source = array("Colour on white", "White on colour", "Colour on white (Newspaper)", "White on colour (Newspaper)"),
   	  	$value = 0
	  ); 		
 		
	  $uploadField = new UploadField($name = 'HeroImage', $title = 'Image');
	  $uploadField->setCanUpload(false);
	
   	  $fields = new FieldList (
   	  	new TextField('Name', 'Name'), 
   	  	new LiteralField ('literalfield', '<strong>Image Element</strong>'), 
   	  	$uploadField,
   	  	new LiteralField ('literalfield', '<strong>Text Element</strong>'),
   	  	$textField,
   	  	new HtmlEditorField('Content', 'Content'));
	   
   	  return $fields; 
   } 	
}
