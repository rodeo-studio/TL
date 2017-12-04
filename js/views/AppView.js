define([
  'underscore', 
  'backbone',
  'views/FeedView',
  'views/SearchResultsView',  
  'views/ImagesView',
  'views/VideoView',
  'views/JWPlayerVideoView',  
], function(_, Backbone, FeedView, SearchResultsView, ImagesView, VideoView, JWPlayerVideoView){

  var AppView = Backbone.View.extend({
    initialize: function(){
	    app.dispatcher.on("ImagesView:imagesready", this.onImagesReady, this);
	  	
	    var self = this;
	    
	    $('#loading').show();

	  	this.searchResultsView = new SearchResultsView({ el: '#search_results_panel' });

        $('.video_player').each(function(index) {
  	      this.videoView = new VideoView({ el: this });
  	      this.videoView.render();
        });
	
	    if ($('.shop-view').length) {
	      $('.shop-btn').click(function(evt){
	      	$('.product-detail').hide();
	      	$('.product-thumb').show();
	      });	    	
	    	
	      $('.product-thumb').click(function(evt){
	      	var nID = $(this).attr('data-id');
	      	$('.product-thumb, .product-detail').hide();
	      	$('.product-detail[data-id='+nID+']').show();
	      });
		  }
		
	 	this.imagesView = null;
		if ($('.feed-view').length) {
	  	  this.feedView = new FeedView({ el: '#feed-posts', strTwitterScreenName: strTwitterScreenName, strLimitTweets: strLimitTweets });
	  	  this.feedView.render();
		}
		else {
	  	  this.imagesView = new ImagesView();
	  	  this.imagesView.load();    			
		}
		
	    $('.submenu_btn').click(function(evt){
	      toggleSubmenuPanel();
	    });
	    
	    $('.search_btn').click(function(evt){
	      toggleSearchPanel();
	    });
	
		$('.categorymenus .menu').click(function(evt){
		  selectSearch($(this));
	    });

		$('.searchmenus .menu').click(function(evt){
		  selectSearchCategory($(this));
	    });

		$('#contentpanel, #overlay').on('touchmove', function(e){ 
     	  if ($('body').hasClass('disableScroll')) {
     	    e.preventDefault();	
     	  }     	   
		});

	    // search all
		this.searchResultsView.render('all');			

	    function selectSearch(elSearchMenu) {
	      var bToggle = false;
	      if (elSearchMenu.hasClass('active')) {
	    	bToggle = true;
	      }
	    	
		  $('.categorymenus .menu').removeClass('active');
		  elSearchMenu.addClass('active');	
		  if (elSearchMenu.hasClass('all_btn')) {
			hideSearchMenus();
			// search all
			self.searchResultsView.render('all');
		  }
		  else {
		    showSearchMenus(elSearchMenu.attr('data-id'));	
			// search all
			if (!bToggle) {
			  // menu has changed
			  self.searchResultsView.render('all');	
			}			
		  }
		}
	
		function selectSearchCategory(elSearchCategoryMenu) {
		  $('.catmenu .menu').removeClass('active');
		  elSearchCategoryMenu.addClass('active');
		  self.searchResultsView.render(elSearchCategoryMenu.attr('data-id'));
		}
	
	    function toggleSubmenuPanel() {
	      if ($('#menupanel').hasClass('reveal')) {
	      	if ($('#menupanel').hasClass('reveal_search')) {
	      	  selectMenu('submenu');
	      	  // hide search
	      	  hideSearchPanel();
	      	  setTimeout(function() {
	      	  	$('#menupanel .searchpanel').hide();
		  	    showSubmenuPanel();      	  	
	      	  }, 400);
			}      	
			else {
			  hideSubmenuPanel();
			}
	      }
		  else {
		  	selectMenu('submenu');
		  	showSubmenuPanel();
		  }    	
	    }
	
	    function toggleSearchPanel() {
	      if ($('#menupanel').hasClass('reveal')) {
	      	if ($('#menupanel').hasClass('reveal_submenu')) {
			  selectMenu('search');	
	      	  // hide submenu
	      	  hideSubmenuPanel();
	      	  setTimeout(function() {
	      	  	$('#menupanel .submenupanel').hide();
		  	    showSearchPanel();      	  	
	      	  }, 400);
			}      	
			else {
			  hideSearchPanel();
			}
	      }
		  else {
		  	selectMenu('search');
		  	showSearchPanel();
		  }    	
	    }
	
	    function showSearchMenus(nID) {
	      var elCatMenu = $('#catmenu_' + nID); 
	    	
	      // is the menu already visible?
	      if (elCatMenu.is(':visible')) {
		    $('#menupanel').removeClass('reveal_search_menus');	      	
		    $('#menupanel').removeClass('reveal_search_menus_1');	      	
		    $('#menupanel').removeClass('reveal_search_menus_2');	      	
		    
      	    setTimeout(function() {
	          $('#menupanel .searchmenus .catmenu').hide();	 
	        }, 400);		    
	      }
	      else {
		    if ($('#menupanel').hasClass('reveal_search_menus')) {		    	
		      $('#menupanel').removeClass('reveal_search_menus');
		      $('#menupanel').removeClass('reveal_search_menus_1');	      	
		      $('#menupanel').removeClass('reveal_search_menus_2');	      	
	    	
      	      setTimeout(function() {
	            $('#menupanel .searchmenus .catmenu').hide();
	            $('#menupanel .searchmenus .catmenu .menu').removeClass('active');	 
	            $('#menupanel .searchmenus').show();
	            elCatMenu.show();	      
	        
	            $('#menupanel').addClass('reveal_search_menus');     
	            $('#menupanel').addClass('reveal_search_menus_'+elCatMenu.attr('data-pos'));     
	          }, 400);
	        }
	        else {
              $('#menupanel .searchmenus').show();
              elCatMenu.show();	      
        
              $('#menupanel').addClass('reveal_search_menus');
              $('#menupanel').addClass('reveal_search_menus_'+elCatMenu.attr('data-pos'));     	      	
	        }	      	
	      }
	    }

	    function hideSearchMenus() {	      
		  $('#menupanel').removeClass('reveal_search_menus');
		  $('#menupanel').removeClass('reveal_search_menus_1');	      	
		  $('#menupanel').removeClass('reveal_search_menus_2');	      		      
	      
      	  setTimeout(function() {
		    $('.catmenu .menu').removeClass('active');
	        $('#menupanel .searchmenus').hide();
      	  }, 400);
	    }
	
	    function selectMenu(strMenu) {
		}
	
	    function showSubmenuPanel() {
	  	  $('#menupanel .submenupanel').show();
		  $('#menupanel').addClass('reveal');
		  $('#menupanel').addClass('reveal_submenu');
		}
	
	    function hideSubmenuPanel() {
	      $('#menupanel').removeClass('reveal');
	      $('#menupanel').removeClass('reveal_submenu');
		}
	    
	    function showSearchPanel() {    	
	  	  $('#menupanel .searchpanel').show();
		  $('#menupanel').addClass('reveal');
		  $('#menupanel').addClass('reveal_search');
		  
	      // start search
	      selectSearch($('.categorymenus .all_btn'));		  
		}
	
	    function hideSearchPanel() {
	      $('#menupanel').removeClass('reveal');
	      $('#menupanel').removeClass('reveal_search');
	      
	      hideSearchMenus();
		}
	    
	    function toggleSidePanel() {
	      var elOverlay = $('#overlay');    	
  	 	  if (elOverlay.hasClass('hidden')) {
	  	  	$('#sidepanel').scrollTop(0);
          $('#fixednav').hide();

	        $('#sidepanel').css('left', '50%');
	        $('#contentpanel').css('left', '-50%');
	 	  	
	 	  	  $('body').addClass('disableScroll'); 	  	  
	 		    elOverlay.removeClass('hidden');
	 		
    	 		setTimeout(function () {  
    	      	  elOverlay.css('opacity', 0.85);  
    	    	}, 20); 		
	      }
	      else {
          $('#fixednav').show();
	        $('#sidepanel').css('left', '100%');
	        $('#contentpanel').css('left', '0%');
	      	
	      	$('body').removeClass('disableScroll');
	      	
	      	elOverlay.css('opacity', 0);  
    	 		setTimeout(function () {  
  	      	  elOverlay.addClass('hidden');  
  	    	}, 300); 		      	
	      }    	
	    }

	    $('#overlay').click(function(evt){
	      toggleSidePanel();
	    });    	
	    
	    $('.nav button').click(function(evt){
	      toggleSidePanel();          	
	    });
	},

	onImagesReady: function(){
	  $('#loading').css('opacity', 0);
	  $('#bodypanel').css('visibility', 'visible');
	  	
  	  setTimeout(function() {  	  	
  	    $('#loading').hide();      	  	
  	  }, 500);
	}
	
  });

  return AppView;
});
