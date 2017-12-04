<!DOCTYPE html>
<html lang="en">
  <head>
  	<% base_tag %>
  	<% include GetIncludes %>
    <link href="css/feed.css" rel="stylesheet">
  	<% include GetCustomStyles %>
  	<script>
  	var strTwitterScreenName = '{$TwitterScreenName}';
  	var strLimitTweets = '{$LimitTweets}';
  	</script>  	
  </head>
  <body>
  
  <div id="bodypanel" class="feed-view">
    <div class="container-fluid nopadding">
      <% include DisplaySidePanel %>
      <% include DisplayNav %>
      <div id="contentpanel" class="animate-move">    
	      <div class="col-lg-12 col-md-12 col-sm-12 nopadding">
	      	<div class="intro-block inner text-giant full">
	      	<div class="logo_header"><a href="{$BaseHref}">Tobin Lush</a></div>
			</div>
		  </div>
      
      	<div id="feed-posts" class="clearfix">
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