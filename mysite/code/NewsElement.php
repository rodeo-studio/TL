<?php
class NewsElement extends DataObject {
    private static $db = array(
        'Name' => 'Varchar',
		'SortID'=>'Int',
		'BackgroundColour' => 'Text',
		'Content' => 'HTMLText'
    );
    private static $has_one = array(
        'HeroImage' => 'Image',	
        'News' => 'NewsPage'
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
	  $uploadField = new UploadField($name = 'HeroImage', $title = 'Image');
	  $uploadField->setCanUpload(false);
	
   	  $fields = new FieldList (
   	  	new TextField('Name', 'Name'), 
   	  	new TextField('BackgroundColour', 'Background Colour (Hex)'),
   	  	new LiteralField ('literalfield', '<strong>Image Element</strong>'), 
   	  	$uploadField,
   	  	new LiteralField ('literalfield', '<strong>Text Element</strong>'),
   	  	new HtmlEditorField('Content', 'Content'));
	   
   	  return $fields; 
   } 	
}
