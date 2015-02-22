$(document).ready(function(){

  // $('#message_panel').hide(function());
  // $('#message_panel').on('load', check_for_message);
  $( window ).load(check_for_message)

});

function check_for_message() {
  if ( $('notice').is(':empty') ) {
    alert("This works!");
  }
}