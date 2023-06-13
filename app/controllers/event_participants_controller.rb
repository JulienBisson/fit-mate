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
      redirect_to event_path(@event_participant.event_id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
    event = Event.find(params[:id])
    @event_participant = EventParticipant.where(event_id: event.id, user_id: current_user)
    @event_participant.delete(@event_participant)
    redirect_to event_path(Event.find(params[:id])), status: :see_other
  end
end
