class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where("sport ILIKE ? OR localisation ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: event }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
  end
end
