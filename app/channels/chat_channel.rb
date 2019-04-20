class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "global_chat"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'global_chat', message: data['message']
  end
end
