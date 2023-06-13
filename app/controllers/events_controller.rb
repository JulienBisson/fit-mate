class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @events = Event.all
    @sports = Sport::LIST
    @selected_sports = Sport::LIST.map(&:to_s)
    if params[:query].present?
      @events = @events.where("sport ILIKE ? OR localisation ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        marker_html: render_to_string(partial: "marker", locals: { event: event })
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @organizer = @event.organizer
    @event_participant = EventParticipant.where(event_id: params[:id], user_id: current_user)
  end

end
