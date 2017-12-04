<div class="image_container fade_on_load project_btn">
<a href="$Link">
<% if FeatureImage %>
  <img src="{$FeatureImage.URL}" class="img-responsive">
<% else_if MainImage %>
  <img src="{$MainImage.URL}" class="img-responsive">
<% end_if %>
</a>
</div>		    
<div class="intro-block text-giant">
<p><a href="$Link">$Title</a></p>
$Content
</div>		    
