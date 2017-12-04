<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
  </head>
  <body>
  
  <div id="bodypanel" class="news-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
	
      <div id="contentpanel" class="animate-move">    
	      <% loop NewsElements %>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
	          <% if HeroImage %>
		        <div class="image_container fade_on_load"><img src="{$HeroImage.URL}" class="img-responsive"></div>
		        
				<div class="image-intro-block inner text-giant">
				<% if First %>								        
		        <div class="logo_header"><a href="{$BaseHref}">Tobin Lush</a></div>
		        <% end_if %>
		        </div>
		      <% end_if %>
		        
		      <% if Content %>
	            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding">
	            <% if BackgroundColour %>
	        	<div class="intro-block inner text-giant full" style="background: #{$BackgroundColour};">
	        	<% else %>
	        	<div class="intro-block inner text-giant full">
	        	<% end_if %>
				<% if First %>
				  <% if HeroImage %>
				  <% else %>								        
		          <div class="logo_header"><a href="">Rodeo</a></div>
		          <% end_if %>
		        <% end_if %>
				$Content</div>                      
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