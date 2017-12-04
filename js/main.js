require.config({
  paths: {
	modernizr: 'libs/modernizr.custom.76241',  	
    underscore: 'libs/underscore-min',
    backbone: 'libs/backbone-min'
  }
});
require(['controller/app'], function(App){
  App.initialize();
});

$("#contactform").submit(function(evt){
  sendForm('#contactform');
  event.preventDefault();
});

function sendForm(strID) {
  switch (strID) {
    case '#contactform':
      $.post("server/mailerproxy.php", $(strID).serialize()).success(function(data) {
//      	console.log(data);
      });
      $('#contactform')[0].reset();
      $('.msg-response', $('#contactform')).show();
      break;
  }
}
