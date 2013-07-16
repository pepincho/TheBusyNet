// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('#select-role').on('change', function(){
    var role = $('#select-role').val();
    if (role != "") {
      $.ajax({
        type: "POST",
        url: "/get_activities/"+role,
        success: function(data){
          var activities = $('#select-activity');
          activities.html('');
          $.each(data, function(index, value) {
            var opt = $('<input>');
            opt.attr('value', value['id']);
            opt.attr('type','checkbox');
            opt.attr('name','activity_id[]');
            activities.append(value['name'])
            opt.appendTo(activities);  
          });
        }
      });
    } else {
      $('#select-activity').html('');

    }
  });
});

