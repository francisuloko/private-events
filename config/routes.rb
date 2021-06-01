Rails.application.routes.draw do
  devise_for :users, :controllers  => { registrations: 'registrations' }
  root 'events#index'
  
  resources :events
  
  devise_scope :user do
    resources :users, only: [:show]
  end

  resources :event_attendees, only: [:create, :destroy]
end
