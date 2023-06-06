Rails.application.routes.draw do
  # get 'event_participations/new'
  # get 'event_participations/create'
  # get 'event_participations/edit'
  # get 'event_participations/update'
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
    resources :event_participations, only: %i[update]
    resources :chatboxes, only: %i[show] do
      resources :messages, only: %i[create]
    end
  end
end
# organizer quand je créé events mais user quand index/show
