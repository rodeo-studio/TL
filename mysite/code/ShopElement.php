<?php
class ShopElement extends DataObject {
    private static $db = array(
      'Name' => 'Varchar',
      'Size'=>'Int',        
      'SortID'=>'Int'
    );
    private static $has_one = array(
      'HeroImage' => 'Image', 
      'ShopElement' => 'ShopPage'
    );    
    
  // this function creates the thumbnail for the summary fields to use 
  public function ImageThumbnail() { 
    return $this->HeroImage()->SetHeight(100); 
  }
    
  public static $summary_fields = array( 
    'Name' => 'Name',
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
        new LiteralField ('literalfield', '<strong>Image Element (overrides Project Main and Feature Images)</strong>'), 
        $uploadField);
     
      return $fields; 
   }  
}
