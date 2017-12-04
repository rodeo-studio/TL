<?php

class Content_Controller extends Controller {
	private static $allowed_actions = array('search');
    public function search(SS_HTTPRequest $request) {
		$param = $request->allParams();
		switch ($param["Type"]) {
		  case 'category':
			if ($param["ID"] == 'all') {
			  $this->Results = DataObject::get('ProjectPage');				
			}	
			else {
			  $this->Results = DataObject::get('ProjectPage')->leftJoin("ProjectPage_Categories", "ProjectPage_Categories.ProjectPageID = ProjectPage_Live.ID")->filter(array('CategoryElementID' => $param["ID"]));
			}		  				
			break;
		}		
		$output = $this->renderWith('AjaxSearch');
		echo $output;
    }	
}
