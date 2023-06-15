require 'open-uri'
require 'nokogiri'

class EventsController < ApplicationController
  before_action :authenticate_user!

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
    @sports = Sport::LIST
    # url = "https://portail.sportsregions.fr/#{@event.sport}/loire-atlantique/annuaire-clubs-de-#{@event.sport}-en-loire-atlantique"
    # doc = Nokogiri::HTML.parse(URI.open(url).read, nil, "utf-8")

    # @list_club = []

    # doc.search(".association").first(10).each do |element|
    #   club = {}
    #   club["name"] = element.search("h2").text.strip
    #   club["localisation"] = element.search("span > span").last.text.strip
    #   @list_club << club
    # end
  end

end
