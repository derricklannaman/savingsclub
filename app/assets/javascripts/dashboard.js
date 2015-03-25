$(document).ready(function() {
  $('.dashboard-button').hover(raisePushButton, lowerPushButton);
  $('#clear-view_btn').on('click', hideBankerNavigation);
});


function hideBankerNavigation() {
  if( $('body').hasClass('susu' && 'show') ) {
    $('body').fadeOut(1000);
    setTimeout(function(){
      $('#banker_control_panel').hide();
    }, 500)


  }

  // $('#banker_control_panel').fadeToggle(500);
}

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

