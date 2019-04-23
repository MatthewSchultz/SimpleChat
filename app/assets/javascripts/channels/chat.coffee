#$(document).on "turbolinks:load", ->
$(document).ready ->
  if $("meta[name='logged_in_user_id']").length > 0 && $("meta[name='room_id']").length > 0
    App.chat = App.cable.subscriptions.create { channel: "ChatChannel", room_id: $("meta[name='room_id']").attr("content") },
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        $('#Messages').append data['message'];

      speak: (msg) ->
        # TODO: This is obviously insecure:
        @perform 'speak', { message: msg, room_id: $("meta[name='room_id']").attr("content"), user_id: $("meta[name='logged_in_user_id']").attr("content") }
