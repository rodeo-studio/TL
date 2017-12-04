{"results": [
<% control Results %>
  {
    "id": $ID, 
    "link": "$Link",
    "title": "$Title",
    "feature_image_url": "<% if FeatureImage %>$FeatureImage.URL<% end_if %>",
    "image_url": "<% if MainImage %>$MainImage.URL<% end_if %>",
    "categories": [
  	  <% control Categories %>
        {
  	    "id": $ID,
  	    "name": "$Name"
  	    }
	    <% if Last %><% else %>,<% end_if %>  	  
  	  <% end_control %>
    ]
  }
  <% if Last %><% else %>,<% end_if %>
<% end_control %>	
]}
