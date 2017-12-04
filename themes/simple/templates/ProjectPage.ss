<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
  </head>
  <body>

  <div id="bodypanel" class="project-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
	
      <div id="contentpanel" class="animate-move">
        <div class="clearfix">
          <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
          <% if VideoURL %>
            <div class="responsive-container">
    				  <div class="video_player" data-autoplay="{$VideoAutoplay}" data-url="{$VideoURL}"></div>
            </div>
          <% else_if MainImage %>
            <div class="image_container fade_on_load"><img src="{$MainImage.URL}" class="img-responsive main-image" /></div>
          <% end_if %>
          <div class="image-intro-block inner text-giant">
            <div class="logo_header"><a href="{$BaseHref}">Tobin Lush</a></div>
            $Content
            </div>
          </div>
        </div>

        <div class="elements">
	      <% loop ProjectElements %>
	        <% if Size = 0 %>
	            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 nopadding <% if HeroImage.ID = 0 && VideoURL = '' && Content = '' %>blank<% end_if %>">
	        <% else_if Size = 2 %>
	            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 nopadding <% if HeroImage.ID = 0 && VideoURL = '' && Content = '' %>blank<% end_if %>">
	        <% else_if Size = 3 %>
	            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 nopadding <% if HeroImage.ID = 0 && VideoURL = '' && Content = '' %>blank<% end_if %>">
	        <% else %>
	            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 nopadding <% if HeroImage.ID = 0 && VideoURL = '' && Content = '' %>blank<% end_if %>">
	        <% end_if %>
	          <% if HeroImage %>
		        <div class="image_container fade_on_load"><img src="{$HeroImage.URL}" class="img-responsive"></div>
		      <% end_if %>
		        
		      <% if VideoURL %>
				<div class="responsive-container">	      	
				  <div class="video_player" data-autoplay="{$VideoAutoplay}" data-url="{$VideoURL}"></div>	      	
				</div>	      	
		      <% end_if %>
		        
		      <% if Content %>
				      <div class="intro-block inner text-giant">$Content</div>
		      <% end_if %>
		      
			  </div>
	      <% end_loop %>
        </div>
	      
		  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		    <div class="col-lg-8 col-md-8 col-sm-8 recommend">
		    
		      <div class="title text-giant">More stories</div>
		    
		      <div class="col-lg-6 col-md-6 col-sm-6">	
		      	<% if PrevNextPage(prev) %>
				  <% control PrevNextPage(prev) %>
				    <% include DisplayFeatureProject %> 
				  <% end_control %> 
		      	<% else %>
				  <% control FirstLastPage(last) %>
				    <% include DisplayFeatureProject %> 
				  <% end_control %> 
				<% end_if %>
		      </div>
		    	
		      <div class="col-lg-6 col-md-6 col-sm-6">
		      	<% if PrevNextPage(next) %>
			      <% control PrevNextPage(next) %>
			        <% include DisplayFeatureProject %>
			      <% end_control %>
		      	<% else %>
				  <% control FirstLastPage(first) %>
				    <% include DisplayFeatureProject %> 
				  <% end_control %> 		      	  
				<% end_if %>
		      </div>
		    
		    </div>  
		  </div>
	      
	      
		  <% include DisplayFooter %>
	  </div>
			
    </div><!-- /.container -->
  </div>
  
  <% include DisplayLoading %>
  <% include DisplayScript %>
  </body>
</html>