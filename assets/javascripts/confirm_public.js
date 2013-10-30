$(function(){
  $('#new_project').on('submit.confirm', function(e){
    if ($('#project_is_public').prop( "checked" )) {
      if( !confirm( $( '#hidden_confirm_msg' ).text() ) ){
        $(this).removeAttr('data-submitted');
        return false;
      }
    }
    return true;
  });
});
