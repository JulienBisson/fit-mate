class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatbox = Chatbox.find(params[:id])
    stream_for chatbox
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
