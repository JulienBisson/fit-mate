class EventParticipantsController < ApplicationController
  def new
    @event_participant = EventParticipant.new
  end

  def create
    @event_participant = EventParticipant.new
    @event_participant.user_id = current_user.id
    @event_participant.event_id = params[:event_id]
    @event_participant.status = params[:status]
    if @event_participant.save!
      redirect_to events_path
    else
      render :new
    end
  end

  def update
  end
end
