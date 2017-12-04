<?php
class CategoryElement extends DataObject {
    private static $db = array(
        'Name' => 'Varchar',
		'SortID'=>'Int' 
    );
    private static $has_one = array(
        'Category' => 'CategoryHolderPage'
    );    
	
	private static $default_sort = "SortID ASC";
	
 	function getCMSFields() {	
   	  $fields = new FieldList (new TextField('Name', 'Name'));
	   
   	  return $fields; 
   } 	
}
