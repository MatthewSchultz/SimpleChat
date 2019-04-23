# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#ChatWindow form').submit (submit_event) ->
    # Ignore the actual form event; stop it from submitting:
    submit_event.preventDefault()

    # Actually send the message:
    App.chat.speak( $('#ChatWindow form .message-input').val() )

    # Reset the form:
    $('#ChatWindow form')[0].reset()
