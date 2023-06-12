class EventParticipantsController < ApplicationController
  def new
    @event_participant = EventParticipant.new
  end

  def create
    @event_participant = EventParticipant.new(event_participant_params)
    @event_participant.user_id = current_user.id
    if @event_participant.save!
      redirect_to events_path
    else
      render :new
    end
  end

  def update
  end

  private

  def event_participant_params
    params.require(:event_participant).permit(:event_id)
  end
end
