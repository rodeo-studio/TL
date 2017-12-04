<?php
class FeedPage extends Page {

	private static $db = array(
	  'TwitterScreenName' => 'Text',
	  'LimitTweets' => 'Text'
	);

    private static $has_many = array(
    );

	public static $many_many = array(
    );

	private static $has_one = array(	
	);

    function getCMSFields() {
      $fields = parent::getCMSFields();

      // remove fields
      $fields->removeFieldFromTab('Root.Main', 'Content');
				
  	  $fields->addFieldToTab('Root.Main', new TextField('TwitterScreenName', 'Twitter Screen Name'));	
  	  $fields->addFieldToTab('Root.Main', new TextField('LimitTweets', 'Tweet Limit'));	
					
      return $fields;
    }      

}
class FeedPage_Controller extends Page_Controller {
	private static $allowed_actions = array (
	);

	public function init() {
	  parent::init();
	}
	
}
