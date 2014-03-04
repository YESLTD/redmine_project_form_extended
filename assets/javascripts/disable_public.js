$(function(){
  if ($('#new_project').length) {
    $('#project_is_public').prop('checked', false);
  }
  $('#project_is_public').prop('disabled', true);
});
