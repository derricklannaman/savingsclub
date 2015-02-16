$(document).ready(function() {
  $('.dashboard-button').hover(raisePushButton, lowerPushButton);
});

function raisePushButton() {
  var btn = $( this );
  if (btn.hasClass('recessed')) {
    btn.removeClass('recessed');
  }
  btn.addClass('levitate', 3000);
}

function lowerPushButton() {
  var btn = $( this );
  btn.removeClass('levitate');
}

