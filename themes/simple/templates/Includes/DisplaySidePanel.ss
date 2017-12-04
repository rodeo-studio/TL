  <div id="sidepanel" class="animate-move">
  	<div class="container-fluid nopadding">	  		  		
	  <div id="menupanel">					  		
  	    <div class="col-lg-12 col-md-12 col-sm-12 nopadding">      
		  <div class="mainmenus">
		    <div class="submenu"><span class="logo_r submenu_btn mainmenu"><img src="images/logo_min.svg"></span></div>
		    <div class="nav">
	          <button type="button" class="navbar-toggle">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	        </div>
	      </div>
		</div>

	    <div class="submenupanel">
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="about">About</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="contact">Contact</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="news">News</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="subscribe">Subscribe</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="feed">Feed</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu"><a href="shop">Shop</a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu icon"><a href="$HomePage.TumblrURL" target="_blank"><span class="fa fa-tumblr"></span></a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu icon"><a href="$HomePage.TwitterURL" target="_blank"><span class="fa fa-twitter"></span></a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu icon"><a href="$HomePage.InstagramURL" target="_blank"><span class="fa fa-instagram"></span></a></div>
  	        <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu icon"><a href="$HomePage.VimeoURL" target="_blank"><span class="fa fa-vimeo"></span></a></div>
		</div>

	    <div class="searchpanel">
	      <div class="categorymenus">
  	        <div class="col-lg-4 col-md-4 col-sm-4 nopadding menu all_btn">All</div>
		  	<% control Menu(1) %>
		  	  <% if ClassName = CategoriesPage %>
			    <% control children %>
	  	          <div class="col-lg-4 col-md-4 col-sm-4 nopadding menu" data-id="{$ID}">$Title</div>	  	        
	  	        <% end_control %>	  	        
		  	  <% end_if %>
		  	<% end_control %>
  	      </div>
  	      
  	      <div class="searchmenus">
	  	  <% control Menu(1) %>
	  	    <% if ClassName = CategoriesPage %>
		      <% control children %>
	  	        <div class="catmenu" id="catmenu_{$ID}" data-id="{$ID}" data-pos="{$Pos}">
  	            <% control CategoryElements %>
  	        	  <div class="col-lg-6 col-md-6 col-sm-6 nopadding menu" data-id="{$ID}">$Title</div>
  	            <% end_control %>
  	      	    </div>    
  	          <% end_control %>	  	        
	  	    <% end_if %>
	  	  <% end_control %>
	  	  </div>
		</div>
		
  	  </div>	  	

	  <div id="search_results_panel"></div>
  	</div>
  </div>

  <div id="overlay" class="hidden"></div>
  