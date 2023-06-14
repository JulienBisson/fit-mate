module Organizer
  class EventsController < ApplicationController
    def new
      @event = Event.new
    end

    def create
      @event = Event.new(organizer_params)
      @event.organizer = current_user
      if @event.save
        redirect_to event_path(@event), notice: "Event added ✔️"
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def organizer_params
      params.require(:event).permit(:title, :description, :localisation,
                                    :event_level, :max_participant, :datetime, :sport, :photo)
    end
  end
end
