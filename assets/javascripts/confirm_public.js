$(function(){
  $('#new_project').on('submit.confirm', function(e){
    if ($('#project_is_public').prop( "checked" )) {
      if(!confirm("Are you sure you want to create this project as public?")){
        $(this).removeAttr('data-submitted');
        return false;
      }
    }
    return true;
  });
});
