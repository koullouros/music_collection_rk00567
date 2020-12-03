// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// # uses jquery to ensure all tags with class form-control are present before submitting contact email

//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

//= require jquery.validate

$(document).on('turbolinks:load', function() {
  // validation for the contact form
  $("#contact-form").validate({
    rules: {
      // name should be present with a length of at least 3
      name: {
        required: true,
        minlength: 3
      },
      // email should be present
      email: {
        required: true,
        email: true
      },
      // a valid message should be present
      message: {
        required: true
      }
    }
  });

  // toggle animation in home screen
  $("#c_info").click(function(){
    $("#info").slideToggle("slow");
  });
});
