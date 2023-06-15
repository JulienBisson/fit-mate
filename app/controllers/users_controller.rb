class UsersController < ApplicationController
  def show
    @user = current_user
    @events = EventParticipant.where(user: @user, status: "participe")
    @organizer = Event.where(organizer: @user)
    @interested = EventParticipant.where(user: @user, status: "intéressé")
  end
end
