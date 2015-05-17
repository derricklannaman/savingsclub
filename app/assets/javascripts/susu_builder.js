$(document).ready(function(){

  $('#calculate').on('click', calculateSusuBankNumbers);

});

function calculateSusuBankNumbers() {
  if( $('#susu-title').text().length > 0) {
    $('#susu-title').empty();
  }

  var members = parseInt( $('#susu_member_count').val() );
  var susuValue = parseInt( $('#susu_total_value').val() );
  var contributeAmount = susuValue / members;
  var susuName = $('#susu_name').val();

  $('#susu-title').append(susuName);
}