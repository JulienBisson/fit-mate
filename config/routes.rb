Rails.application.routes.draw do
  # get 'event_participants/new'
  # get 'event_participants/create'
  # get 'event_participants/edit'
  # get 'event_participants/update'
  # get 'events/index'
  # get 'events/show'
  # get 'events/new'
  # get 'events/create'
  devise_for :users
  root to: "pages#home"
  namespace :organizer do
    resources :events, only: %i[new create edit update]
  end
  resources :events, only: %i[index show] do
    resources :event_participants, only: %i[update]
    resources :chatboxes, only: %i[show] do
      resources :messages, only: %i[create]
    end
  end
  resources :users, only: %i[show]
end
# organizer quand je créé events mais user quand index/show
