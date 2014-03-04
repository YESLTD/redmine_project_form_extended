$(function(){
  if ($('#new_project').length) {
    $('#project_is_public').prop('checked', false);
    $('#new_project').on('submit.confirm', function(e){
      if ($('#project_is_public').prop( "checked" )) {
        if( !confirm( $( '#hidden_confirm_msg' ).text() ) ){
          $(this).removeAttr('data-submitted');
          return false;
        }
      }
      return true;
    });
  } else if ($('.edit_project').length) {
    $('.edit_project').on('submit.confirm', function(e){
      if ($('#project_is_public').prop( "checked" )) {
        if( !confirm( $( '#hidden_confirm_msg' ).text() ) ){
          $(this).removeAttr('data-submitted');
          return false;
        }
      }
      return true;
    });
  }
});
