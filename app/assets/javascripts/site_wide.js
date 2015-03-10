$(document).ready(function(){

  // $('#message_panel').hide(function());
  // $('#message_panel').on('load', check_for_message);
  $( window ).load(check_for_message)

});

function check_for_message() {
  if ( $('p#notice').text().length > 0 ) {
    console.log('notice is not empty');
    $('p#notice').addClass('notificationVisible')
  }
  else if ( $('p#notice').text().length == 0 ) {
    $('p#notice').addClass('notificationInvisible')
  }
}