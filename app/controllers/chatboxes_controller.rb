class ChatboxesController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @event.organizer = current_user
    @chatbox = Chatbox.find_by(event_id: @event.id)
    @message = Message.new
  end
end
