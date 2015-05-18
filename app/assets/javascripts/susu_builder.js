$(document).ready(function(){
  // $('#results-header').hide();
  $('#calculate').on('click', calculateSusuBankNumbers);
  // $('#results-header p').fadeOut();
});

function calculateSusuBankNumbers() {
  if( $('#susu-title').text().length > 0) {
    $('#susu-title').empty();
    $('#total-payout').empty();
  }

  var members = parseInt( $('#susu_member_count').val() );
  var susuValue = parseInt( $('#susu_total_value').val() );
  var contributeAmount = susuValue / members;
  var susuName = $('#susu_name').val();
  $('#result-title').css('color', '#FFFFFF');
  $('#susu-title').append(susuName);
  $('#total-payout').append(susuValue);
  $('#contribution-period').append(contributeAmount);
}