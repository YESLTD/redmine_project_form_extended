$(function(){

  $('#new_project').submit(function(){

    if ($('#project_is_public').prop( "checked" )) {
      message = confirm("Are you sure you want to create this project as public?");
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
