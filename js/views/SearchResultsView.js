define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var SearchResultsView = Backbone.View.extend({
    initialize: function(){    	
      this.collection = new Backbone.Collection();
    	
      var self = this;
      this.strCurrentSearch = '';
      
      var strURL = 'content/search/all/category';      
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
	render: function(strSearchID){
	  if (this.strCurrentSearch == strSearchID) {
	  	return;
	  } 		
	  this.strCurrentSearch = strSearchID;
		
	  var self = this;
	  var elResult;
	  
	  this.collection.each(function(model) {
	  	elResult = $('div[data-id='+model.id+']', $(self.el));
	  	if (elResult.length) {
		  var catFound = _.find(model.get('categories'), function(category) {return category.id == strSearchID;});
	  	  if (catFound || strSearchID == 'all') {
	  	    elResult.show();
	  	  }
	  	  else {
	  	    elResult.hide();
	  	  }	  	  
	  	}
	  });	  
	},
	processResults: function(data){
    var self = this;
	  var strContent = '', model;
	  
   	  $.each(data.results, function(key, result) {   	  	
	    model = new Backbone.Model(result);
    	self.collection.add(model);	    

		var strImage = model.get('image_url');
		if (model.get('feature_image_url')) {
		  strImage = model.get('feature_image_url');
		}    	
	    strContent += '<div class="col-lg-6 col-md-6 col-sm-6 nopadding" data-id="'+model.id+'"><div class="image_container fade_on_load project_btn"><a href="'+model.get('link')+'"><img src="'+strImage+'" class="img-responsive"><div class="title inner text-giant">'+model.get('title')+'</div></a></div></div>';;
   	  });
	
	  $(this.el).html(strContent);
    
      var elImages = $('img', $(this.el));
      var imgLoad = imagesLoaded(elImages);
      imgLoad.on('always', function(instance) {
        $('.fade_on_load', $(self.el)).css('opacity', 1);			
	  });	  
	}

  });

  return SearchResultsView;
});
