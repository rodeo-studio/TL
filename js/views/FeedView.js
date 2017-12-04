define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var FeedView = Backbone.View.extend({
    initialize: function(){
      var self = this;

      var strURL = 'server/tweet.php?screenname=' + this.options.strTwitterScreenName + '&limit=' + this.options.strLimitTweets;      
      $.ajax({
        type: "GET",
        dataType: "json",
        url: strURL,
        error: function(data) {
//          console.log('error:'+data.responseText);      
//          console.log(data);      
        },
        success: function(data) {      
//          console.log('success');
//          console.log(data);
		  self.processResults(data);
        }
      });	  
    	
    },   
    render: function(){
      var self = this;
            
      return this;    	
	},
	processResults: function(data){
	  var self = this;		
	  var strContent = '', strImage, strURL, model;
	  
   	  $.each(data, function(key, result) {   	  	   	  	
	    model = new Backbone.Model(result);
//   	  	console.log(model);
		if (model.get('entities').media) {
   	  	  strImage = model.get('entities').media[0].media_url;
   	  	  strURL = model.get('entities').media[0].expanded_url;
	      strContent += '<div class="post"><div class="image_container fade_on_load"><img src="'+strImage+'" class="img-responsive"></div><div class="img-tweet"><div class="text"><span>'+model.get('formattedText')+'</span></div></div></div>';			
		}
		else {
	      strContent += '<div class="post full"><div class="tweet">'+model.get('formattedText')+'</div></div>';			
		}
   	  });	
	  $(this.el).html(strContent);
	  
	  $('img', $(this.el)).imagesLoaded()
  	    .progress( function(instance, image) {
    	  var elPost = $(image.img).closest('.post');
    	  if (elPost.length) {
			// set height to loaded image
    	  	$('.text', elPost).css('height', $(image.img).height());
    	  	$('.text', elPost).css('line-height', $(image.img).height()+'px');    	  	
    	  	elPost.addClass('button');
	  	    	  	
		    if (Modernizr.touch) {
		  	  elPost.click(function(evt){
		  		$('.img-tweet').hide();
		  		$('.img-tweet', this).show();
		  	  });
		    } 
		    else {
		  	  elPost.mouseover(function(evt){
		  		$('.img-tweet', this).show();
		  	  });
		  	  elPost.mouseout(function(evt){
		  		$('.img-tweet', this).hide();
		  	  });
		    }               	  	
    	  }
  	    	
    	  var elContainer = $(image.img).closest('.image_container');
    	  if (elContainer.hasClass('fade_on_load')) {
		    var nRnd = 100 * (Math.floor(Math.random() * 6) + 1);
		    setTimeout(function(){
  		  	  elContainer.css('opacity', 1);
		    }, nRnd);
    	  }
  	  });    
	  
      // fire event
      app.dispatcher.trigger("ImagesView:imagesready", self);                                      	  
	}
	
  });

  return FeedView;
});
