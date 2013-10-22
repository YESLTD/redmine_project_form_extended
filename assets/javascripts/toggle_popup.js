$(function(){

  $('#new_project').submit(function(){

    if ($('#project_is_public').prop( "checked" )) {
      message = confirm("Are you sure to make this project public?");
      if(message) {
        return true;
      } else {
       return false;
      }
    } else {
      return true;
    }

  });

});
