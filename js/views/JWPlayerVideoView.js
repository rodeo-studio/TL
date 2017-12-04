define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var JWPlayerVideoView = Backbone.View.extend({
    initialize: function(){
    },   
    render: function(){
      var self = this;

   	  jwplayer("vimeoplayer").setup({
        file: this.options.strVideo,
        image: 'http://i.vimeocdn.com/video/461404940_640.jpg',
        width: "100%",
        aspectratio: "16:9",
        autostart: true,
        controls: false
      });
            
	  $('.testplay').click(function(evt){
	  	jwplayer().play();
	  });            
            
      return this;    	
	}
  });

  return JWPlayerVideoView;
});
