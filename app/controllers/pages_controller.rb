class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :events ]

  def home
  end

  def events
  end
end
