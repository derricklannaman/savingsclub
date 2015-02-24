$(document).ready(function(){

  $('form#new_member').hide();
  $('a#add-member-button').on('click', showMemberForm);
});


function showMemberForm() {
  $('form#new_member').fadeIn(100);
}