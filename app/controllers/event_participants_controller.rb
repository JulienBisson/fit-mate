class EventParticipantsController < ApplicationController
  def new
    @event_participant = EventParticipant.new
  end

  def create
    user_id = current_user.id
    event_id = params[:event_id]
    status = params[:status]

    if EventParticipant.exists?(user_id: user_id, event_id: event_id)
      @event_participant = EventParticipant.find_by(user_id: user_id, event_id: event_id)

      if @event_participant.status == "intéressé"
        @event_participant.status = "participe"
        @event_participant.save!
        redirect_to event_path(event_id)
      else
        redirect_to events_path
      end
    else
      @event_participant = EventParticipant.new(user_id: user_id, event_id: event_id, status: status)

      if @event_participant.save
        redirect_to event_path(event_id), notice: "tezazertyuikjhg"
      else
        render :new
      end
    end
  end

  def update
    # @event_participant = EventParticipant.new(user_id: user_id, event_id: event_id, status: status)
    # status = params[:status]

    # if @event_participant.update(status: status)
    #   redirect_to event_path(@event_participant.event_id)
    # else
    #   render plain: "ERREUR"
    # end
  end

  def destroy
    event_participation_to_delete = Event.find(params[:id])
    @event_participant = EventParticipant.find_by(event_id: event_participation_to_delete.id, user_id: current_user)
    @event_participant.destroy
    redirect_to event_path(Event.find(params[:id])), status: :see_other
  end
end
