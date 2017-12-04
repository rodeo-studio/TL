define([
  'underscore', 
  'backbone'
], function(_, Backbone){

  var VideoView = Backbone.View.extend({
    initialize: function(){
    },   
    render: function(){
      var self = this;
                                    
	  $.getJSON('http://www.vimeo.com/api/oembed.json?url=' + encodeURIComponent($(this.el).attr('data-url')) + '&api=1&color=00FFE5&autoplay='+$(this.el).attr('data-autoplay')+'&player_id=vimeoplayer&callback=?', function(data) {
	    $(self.el).html(unescape(data.html));	  	
	  	
        var player = $('iframe', $(self.el));
        if (!player.length) {
       	  return;
        }
        
      	var url = window.location.protocol + player.attr('src').split('?')[0];

 	  	// Listen for messages from the player
      	if (window.addEventListener){
          window.addEventListener('message', onMessageReceived, false);
      	}
      	else {
          window.attachEvent('onmessage', onMessageReceived, false);
      	}

		// Handle messages received from the player
    	function onMessageReceived(e) {
          var data = JSON.parse(e.data);
        
          switch (data.event) {
            case 'ready':
              onReady();
              break;
               
            case 'playProgress':
              onPlayProgress(data.data);
              break;
               
            case 'finish':
              onFinish();
              break;
          }
      	}
    
	  	// Helper function for sending a message to the player
      	function post(action, value) {
          var data = {
            method: action
          };
        
          if (value) {
            data.value = value;
          }
        
          var message = JSON.stringify(data);
          player[0].contentWindow.postMessage(data, url);
        }
        
	  	function onReady() {
          post('addEventListener', 'pause');
          post('addEventListener', 'finish');
          post('addEventListener', 'playProgress');
        }
    
  	  	function onFinish() {
//          console.log('finished');
      	}
        
 	  	function onPlayProgress(data) {
//          console.log(data.seconds + 's played');
      	}        	  
	  });
            
      return this;    	
	}
  });

  return VideoView;
});
