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
		      	      	
	      <% loop PageElements %>
            <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	          <% if HeroImage %>
		        <div class="image_container fade_on_load"><img src="{$HeroImage.URL}" class="img-responsive"></div>
		      <% end_if %>
		        
		      <% if Content %>
	        	<% if TextStyle = 1 %>
	            <div class="intro-block inner text-giant full style1">
	        	<% else_if TextStyle = 2 %>
	            <div class="intro-block inner text-giant full style2 newspaper">
	        	<% else_if TextStyle = 3 %>
	            <div class="intro-block inner text-giant full style1 newspaper">
	        	<% else %>
	        	<div class="intro-block inner text-giant full style2">
	        	<% end_if %>
				$Content</div>                      
		      <% end_if %>		      
			</div>
	      <% end_loop %>      	      	
	      
	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	      	<div class="intro-block inner text-giant full style1">
	      	<p>
	      	<% include DisplaySubscribeForm %>
			</p>
			</div>
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