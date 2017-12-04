<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
  	<% include GetCustomStyles %>
  </head>
  <body>
  
  <div id="bodypanel" class="about-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
	
      <div id="contentpanel" class="animate-move">    
	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	      	<div class="intro-block inner text-giant full style1">	      	
	      	<div class="logo_header"><a href="{$BaseHref}">Tobin Lush</a></div>
			$Content
			</div>
		  </div>      	      	
	      <% loop ShopElements %>
	        <% if Size = 0 %>
	            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 nopadding <% if HeroImage.ID = 0 %>blank<% end_if %>">
	        <% else_if Size = 2 %>
	            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 nopadding <% if HeroImage.ID = 0 %>blank<% end_if %>">
	        <% else_if Size = 3 %>
	            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding <% if HeroImage.ID = 0 %>blank<% end_if %>">
	        <% else %>
	            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding <% if HeroImage.ID = 0 %>blank<% end_if %>">
	        <% end_if %>
	          <% if HeroImage %>
		        <div class="image_container fade_on_load"><img src="{$HeroImage.URL}" class="img-responsive"></div>
		      <% end_if %>
			  </div>
	      <% end_loop %>
		  
		  <% include DisplayFooter %>
	  </div>
		
    </div><!-- /.container -->
  </div>
  
  <% include DisplayLoading %>
  <% include DisplayScript %>
  <% include DisplayAnalytics %>
  </body>
</html>