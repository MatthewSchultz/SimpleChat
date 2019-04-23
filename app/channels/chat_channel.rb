class ChatChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_from "room_#{params[:room_id]}"
    logger.info('Joined room')
  end

  def unsubscribed
    stop_all_streams
    logger.info('Left room')
  end

  def speak(data)
    Message.create!(
      text: data['message'],
      room_id: data['room_id'],
      user_id: data['user_id']
    )
    logger.info "Chat Message: #{data['message']}"
    logger.info " --- In Room: #{data['room_id']}"
    logger.info " --- By User: #{data['user_id']}"
  end
end
