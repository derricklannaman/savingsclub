$(document).ready(function(){

  $('#calculate').on('click', calculateSusuBankNumbers);

});

function calculateSusuBankNumbers() {
  var members = parseInt( $('#susu_member_count').val() );
  var susuValue = parseInt( $('#susu_total_value').val() );
  var contributeAmount = susuValue / members;
  $('#contribution-results').append(contributeAmount)
}