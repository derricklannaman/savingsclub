$(document).ready(function(){
  $('#calculate').on('click', calculateSusuBankNumbers);
  $('.btn-warning#clear').on('click', clearCalculatedElements);
});

function calculateSusuBankNumbers() {
  // First remove any text from results if they exist
  var susuBuilderFormInputs = $('.result-item');

  for(var i =0 ; i < susuBuilderFormInputs.length; i++) {
    var sb_inputs = $(susuBuilderFormInputs[i]);
    if( sb_inputs.text() > 0 ) {
      $('#susu-title, #total-payout, #duration, #contribution-period').empty();
    }
  }

  var members = parseInt( $('#susu_member_count').val() );
  var susuValue = parseInt( $('#susu_total_value').val() );
  var schedule = $("#susu_scheduled_contribution").val();
      schedule = "<div id='schedule'>" + schedule
  var contributeAmount = susuValue / members;
  var susuName = $('#susu_name').val();
  $('#result-title').css('color', '#FFFFFF');

  // Add results to calculate panel
  displayCalculatedResults(susuValue)
  // $('#susu-title').append(susuName);
  // $('#total-payout').append(susuValue);
  // $('#contribution-period').append('$ ' + contributeAmount + schedule)

}

function displayCalculatedResults(susuValue) {
  displayTotalValue(susuValue);

}

function displayTotalValue(susuValue) {
  if (  ) {

  }
  else if (typeof(susuValue) == "number"){
    alert("There in an error in the totsl value field." )
  }

  // var input = $('#total-payout')
  // $('#total-payout').append(susuValue);
}

function clearCalculatedElements() {
  $('#susu-title').empty();
  $('#total-payout').empty();
  $('#duration').empty();
  $('#contribution-period').empty();
}