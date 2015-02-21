$(document).ready(function(){

  // $('#message_panel').hide(function());
  $('#message_panel').on('load', check_for_message);


});

function check_for_message() {
  alert("This works!");
}