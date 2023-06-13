class MessagesController < ApplicationController

  def create
    @chatbox = Chatbox.find(params[:chatbox_id])
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.chatbox = @chatbox
    @message.user = current_user
    if @message.save
      ChatboxChannel.broadcast_to(
        @chatbox,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "chatboxes/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
