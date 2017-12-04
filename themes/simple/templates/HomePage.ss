<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
  </head>
  <body>

  <div id="bodypanel" class="home-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
	
      <div id="contentpanel" class="animate-move">    
        <div class="clearfix">
  	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
  	        <div class="image_container fade_on_load"><img src="{$MainImage.URL}" class="img-responsive main-image" /></div>
  			   <div class="image-intro-block inner text-giant">$Content</div>
  		    </div>
        </div>
			  
        <div class="projects">
	      <% control Projects %>
	        <% if Size = 0 %>
	            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 nopadding">
	        <% else_if Size = 2 %>
	            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 nopadding">
	        <% else_if Size = 3 %>
	            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
	        <% else %>
	            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding">
	        <% end_if %>

	          <% if HeroImage %>
	        	<div class="image_container fade_on_load project_btn"><div class="content_container"><a href="$Project.Link"><img src="{$HeroImage.URL}" class="img-responsive"><div class="title inner text-giant">$Project.Title</div></a></div></div>
	          <% else_if Project.FeatureImage %>
	            <div class="image_container fade_on_load project_btn"><div class="content_container"><a href="$Project.Link"><img src="{$Project.FeatureImage.URL}" class="img-responsive"><div class="title inner text-giant">$Project.Title</div></a></div></div>
	          <% else_if Project.MainImage %>
		        <div class="image_container fade_on_load project_btn"><div class="content_container"><a href="$Project.Link"><img src="{$Project.MainImage.URL}" class="img-responsive"><div class="title inner text-giant">$Project.Title</div></a></div></div>
		      <% end_if %>
			  </div>
		  <% end_control %>
			</div>
		  <% include DisplayFooter %>
	  </div>
			
    </div><!-- /.container -->
  </div>
  
  <% include DisplayLoading %>
  <% include DisplayScript %>
  <% include DisplayAnalytics %>
  </body>
</html>