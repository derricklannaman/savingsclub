$(document).ready(function(){
  $('#calculate').on('click', calculateSusuBankNumbers);
  $('.btn-warning#clear').on('click', clearCalculatedElements);
});

function calculateSusuBankNumbers() {
  // First remove any text from results if the exist
  var susuBuilderFormInputs = $('.result-item');

  for(var i =0 ; i < susuBuilderFormInputs.length; i++) {
    var sb_inputs = $(susuBuilderFormInputs[i]);
    if( sb_inputs.text() > 0 ) {
      $('#susu-title, #total-payout, #duration, #contribution-period').empty();
    }
  }

  var members = parseInt( $('#susu_member_count').val() );
  var susuValue = parseInt( $('#susu_total_value').val() );
  var contributeAmount = susuValue / members;
  var susuName = $('#susu_name').val();
  $('#result-title').css('color', '#FFFFFF');

  // Add results to calculate panel
  $('#susu-title').append(susuName);
  $('#total-payout').append(susuValue);
  $('#contribution-period').append(contributeAmount);
}

function clearCalculatedElements() {
  $('#susu-title').empty();
  $('#total-payout').empty();
  $('#duration').empty();
  $('#contribution-period').empty();
}