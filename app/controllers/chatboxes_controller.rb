class ChatboxesController < ApplicationController

  def show
    @chatbox = Chatbox.find(params[:id])
    @event = Event.find(params[:event_id])
    @event.organizer = current_user
    @message = Message.new
  end
end
