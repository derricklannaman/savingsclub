$(document).ready(function(){
  $( window ).load(check_for_message)
});

function check_for_message() {
  var notice = $('p#notice');
  if ( notice.text().length > 0 ) {
    notice.addClass('notificationVisible');
    setTimeout(function(){
      notice.fadeOut(1000);
      setTimeout(function(){ notice.empty() }, 1500)
         }, 5000);
  }
  else if ( notice.text().length == 0 ) {
    notice.addClass('notificationInvisible');
  }
}