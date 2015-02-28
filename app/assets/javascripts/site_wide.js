$(document).ready(function(){

  // $('#message_panel').hide(function());
  // $('#message_panel').on('load', check_for_message);
  $( window ).load(check_for_message)

});

function check_for_message() {

  if ( $('#message_panel').children().length == 0 ) {
    $('#message_panel').hide();
  }

}