Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  namespace :organizer do
    resources :events, only: %i[new create edit update]
  end
  resources :events, only: %i[index show] do
    resources :event_participants, only: %i[new create update]
    delete "/event_participants/:id", to: "event_participants#destroy", as: :delete_participation
    resources :chatboxes, only: %i[show] do
      resources :messages, only: %i[create]
    end
  end
  resources :users, only: %i[show]
end

# get "restaurants/:id", to: "restaurants#show", as: :restaurant
# delete "/events/:event_id/event_participants/:id", to:"event_participants#destroy", as: :delete_participation
# delete "/event_participants/:id", to: "event_participants#destroy", as: :delete_participation
