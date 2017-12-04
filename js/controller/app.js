var app = app || {};

define([
  'underscore',
  'modernizr',
  'backbone',
  'views/AppView'
], function(_, Modernizr, Backbone, AppView){
  app.dispatcher = _.clone(Backbone.Events);
	
  var initialize = function() {
    this.appView = new AppView({ });            
  };
    
  return { 
    initialize: initialize
  };   
});  
