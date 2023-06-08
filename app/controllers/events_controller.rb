class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @events = Event.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: event }),
        marker_html: render_to_string(partial: "marker", locals: { event: event })
      }
    end
    @sports = Sport::LIST
    @selected_sports = Sport::LIST
    if params[:query].present?
      @events = @events.where("sport ILIKE ? OR localisation ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
  end

  def show
    @event = Event.find(params[:id])
    @organizer = @event.organizer
  end
end
