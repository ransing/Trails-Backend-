Rails.application.routes.draw do
  resources :current_users
  resources :user_trails
  resources :trail_comments
  resources :event_comments
  resources :create_events
  resources :user_events
  resources :events
  resources :trails
  resources :names
  resources :users


  post '/login', to: 'login#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/login', to: 'login#send'


  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
