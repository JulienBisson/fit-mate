class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where("sport ILIKE ? OR localisation ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end

    geojson_features = []

    @events.geocoded.each do |event|
      geojson_features << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [event.longitude, event.latitude]
        },
        properties: {
          sport: event.sport
        }
      }
    end

    geojson = {
      type: 'FeatureCollection',
      features: geojson_features
    }.to_json

  end

  def show
    @event = Event.find(params[:id])
    @organizer = @event.organizer
  end
end
