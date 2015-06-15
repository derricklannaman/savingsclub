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
  $('#result-title').css('color', '#FFFFFF');

  // Add results to calculate panel
  displayCalculatedResults(susuValue)
  $('#contribution-period').append('$ ' + contributeAmount + schedule)

}

function displayCalculatedResults(susuValue) {
  displayTotalValue(susuValue);

}

function displayTotalValue(susuValue) {
  var susuName = $('#susu_name').val(),
      value = accounting.formatMoney(susuValue);
  $('#total-payout').append("<div>" + susuName + "</div>")
                      .append("<div>Total Payout:</div>")
                        .append(value);
}

function clearCalculatedElements() {
  $('#susu-title').empty();
  $('#total-payout').empty();
  $('#duration').empty();
  $('#contribution-period').empty();
}