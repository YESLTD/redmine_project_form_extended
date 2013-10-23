$(function(){

  $('#new_project').submit(function(){

    if ($('#project_is_public').prop( "checked" )) {
      var message = confirm("Are you sure you want to create this project as public?");
      return message;
    } else {
      return true;
    }

  });

});
